class User < ApplicationRecord
  def repositories
    query = Repository
            .joins("
              LEFT JOIN organizations
              ON repositories.owner_id = organizations.id
              AND repositories.owner_type = 'Organization'
            ") # Join repositories to their organization, if any
            .joins("
              LEFT JOIN memberships
              ON memberships.organization_id = organizations.id
            ") # So that we can select organizations we are members of
            .references(
              :memberships
            ) # Relations passed to or must be structurally compatible

    query.where(owner: self).or( # The ones I own directly
      query.where(memberships: { user_id: id }) # Or ones in my organizations
    )
  end
end

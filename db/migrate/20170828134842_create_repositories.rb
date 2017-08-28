class CreateRepositories < ActiveRecord::Migration[5.1]
  def change
    create_table :repositories do |t|
      t.string :name
      t.references :owner, polymorphic: true

      t.timestamps
    end
  end
end

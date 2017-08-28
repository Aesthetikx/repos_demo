# Repos Demo

A simple example of how to combine has many relationships that can be both
direct or through a second model. In this example, Users can have code
Repositories either directly or through an Organization that they have
Membership with. A Repository belongs to it's owner polymorphically, in this
case it can be either a User or an Organization. Check the seed file for a
quick example.

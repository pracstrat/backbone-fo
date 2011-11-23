class BackboneFo.Models.Post extends Backbone.Model
  paramRoot: 'post'

  defaults:
    title: null
    content: null
  
class BackboneFo.Collections.PostsCollection extends Backbone.Collection
  model: BackboneFo.Models.Post
  url: '/posts'
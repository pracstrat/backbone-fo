class BackboneFo.Models.Comment extends Backbone.Model
  paramRoot: 'comment'

  defaults:
    content: null
  
class BackboneFo.Collections.CommentsCollection extends Backbone.Collection
  model: BackboneFo.Models.Comment
  url: '/comments'
BackboneFo.Views.Comments ||= {}

class BackboneFo.Views.Comments.CommentView extends Backbone.View
  template: JST["backbone/templates/comments/comment"]
  
  events:
    "click .destroy" : "destroy"
      
  tagName: "tr"
  
  destroy: () ->
    @model.destroy()
    this.remove()
    
    return false
    
  render: ->
    $(this.el).html(@template(@model.toJSON() ))    
    return this
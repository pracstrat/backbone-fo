BackboneFo.Views.Comments ||= {}

class BackboneFo.Views.Comments.EditView extends Backbone.View
  template : JST["backbone/templates/comments/edit"]
  
  events :
    "submit #edit-comment" : "update"
    
  update : (e) ->
    e.preventDefault()
    e.stopPropagation()
    
    @model.save(null,
      success : (comment) =>
        @model = comment
        window.location.hash = "/#{@model.id}"
    )
    
  render : ->
    $(this.el).html(this.template(@model.toJSON() ))
    
    this.$("form").backboneLink(@model)
    
    return this
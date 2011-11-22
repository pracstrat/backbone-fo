BackboneFo.Views.Comments ||= {}

class BackboneFo.Views.Comments.ShowView extends Backbone.View
  template: JST["backbone/templates/comments/show"]
   
  render: ->
    $(this.el).html(@template(@model.toJSON() ))
    return this
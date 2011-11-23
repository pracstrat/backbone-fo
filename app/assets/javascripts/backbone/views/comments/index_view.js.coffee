BackboneFo.Views.Comments ||= {}

class BackboneFo.Views.Comments.IndexView extends Backbone.View
  template: JST["backbone/templates/comments/index"]
    
  initialize: () ->
    _.bindAll(this, 'addOne', 'addAll', 'render')
    
    @options.comments.bind('reset', @addAll)
   
  addAll: () ->
    @options.comments.each(@addOne)
  
  addOne: (comment) ->
    view = new BackboneFo.Views.Comments.CommentView({model : comment})
    @$("tbody").append(view.render().el)
       
  render: ->
    $(@el).html(@template(comments: @options.comments.toJSON() ))
    @addAll()
    
    return this
class BackboneFo.Routers.CommentsRouter extends Backbone.Router
  initialize: (options) ->
    @comments = new BackboneFo.Collections.CommentsCollection()
    @comments.reset options.comments

  routes:
    "/new"      : "newComment"
    "/index"    : "index"
    "/:id/edit" : "edit"
    "/:id"      : "show"
    ".*"        : "index"

  newComment: ->
    @view = new BackboneFo.Views.Comments.NewView(collection: @comments)
    $("#comments").html(@view.render().el)

  index: ->
    @view = new BackboneFo.Views.Comments.IndexView(comments: @comments)
    $("#comments").html(@view.render().el)

  show: (id) ->
    comment = @comments.get(id)
    
    @view = new BackboneFo.Views.Comments.ShowView(model: comment)
    $("#comments").html(@view.render().el)
    
  edit: (id) ->
    comment = @comments.get(id)

    @view = new BackboneFo.Views.Comments.EditView(model: comment)
    $("#comments").html(@view.render().el)
  
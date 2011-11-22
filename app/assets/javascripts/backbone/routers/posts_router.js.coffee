class BackboneFo.Routers.PostsRouter extends Backbone.Router
  initialize: (options) ->
    @posts = new BackboneFo.Collections.PostsCollection()
    @posts.reset options.posts

  routes:
    "/new"      : "newPost"
    "/index"    : "index"
    "/:id/edit" : "edit"
    "/:id"      : "show"
    ".*"        : "index"

  newPost: ->
    @view = new BackboneFo.Views.Posts.NewView(collection: @posts)
    $("#posts").html(@view.render().el)

  index: ->
    @view = new BackboneFo.Views.Posts.IndexView(posts: @posts)
    $("#posts").html(@view.render().el)

  show: (id) ->
    post = @posts.get(id)
    
    @view = new BackboneFo.Views.Posts.ShowView(model: post)
    $("#posts").html(@view.render().el)
    
  edit: (id) ->
    post = @posts.get(id)

    @view = new BackboneFo.Views.Posts.EditView(model: post)
    $("#posts").html(@view.render().el)
  
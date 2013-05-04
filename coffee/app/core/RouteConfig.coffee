J.Core.RouteConfig = ->
	J.App.Router.map ->
		@resource "profile", ->
			@route "feed"
			@route "company"

		@resource "about"
		@resource "developers"

	J.App.IndexRoute = Em.Route.extend
		redirect: -> @transitionTo "profile"

	J.App.ProfileRoute = Em.Route.extend
		model: -> J.App.Profile.find(1)

	J.App.ProfileIndexRoute = Em.Route.extend
		redirect: -> @transitionTo "profile.feed"



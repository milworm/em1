J =
	Core: {}
	Controller: {}
	Model: {}
	View: {}

head.js(
	"js/app/core/Store.js",
	"js/app/core/RouteConfig.js", 

	# controllers
	"js/app/controller/ProfileController.js",

	# views
	"js/app/view/EditableTextField.js",

	# models
	"js/app/model/Profile.js",

	# templates
	"js/app/template/Layout.js", 
	"js/app/template/Profile.js", 
	"js/app/template/Developers.js",
	"js/app/template/ProfileFeed.js",
	"js/app/template/ProfileCompany.js",
	"js/app/template/About.js",
	->
		J.App = Em.Application.create()
		J.Core.Store()
		J.Core.RouteConfig()

		# models
		J.Model.Profile()
		# controllers
		J.Controller.ProfileController()

)
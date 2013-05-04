J.Controller.ProfileController = ->
	J.App.ProfileController = Em.ObjectController.extend
		updateStatus: (profile) ->
			profile.set "isStatusEditable", true

		statusUpdated: (newValue, view) ->
			model = view.get "model"
			model.set "isStatusEditable", false
			model.get("transaction").commit()

		rejectStatusUpdate: (view) ->
			model = view.get "model"

			if model.get("isStatusEditable")
				model.set "isStatusEditable", false
				model.get("transaction").rollback()

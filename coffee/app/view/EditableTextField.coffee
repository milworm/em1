J.View.EditableTextField = Em.TextField.extend
	focusOut: ->
		@get("controller").rejectStatusUpdate @

	didInsertElement: ->
		el = $(@get("element"))
		el.select()
		el.focus()
		#el.val el.val()
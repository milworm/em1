J.Model.Profile = -> 
	J.App.Profile = DS.Model.extend
		fullName: DS.attr "string"
		city: DS.attr "string"
		status: DS.attr "string"

	J.App.Profile.FIXTURES = [{
		id: 1
		fullName: "Ruslan Prytula"
		city: "Kyiv"
		status: "It's Minimal, Jazz, Soul, Techno, Acid or Deep House, You're named it, I love it"
		isStatusEditable: false
	}]
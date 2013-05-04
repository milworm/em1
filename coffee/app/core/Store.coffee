J.Core.Store = -> 
	J.App.Store = DS.Store.extend
		revision: 12
		adapter: "DS.FixtureAdapter"
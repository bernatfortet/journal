Meteor.subscribe "days"
	
Push.addListener 'token', (token) ->
  alert JSON.stringify(token)
  return


Template.day.helpers
	day: ->
		#fetch this users day that matches today
		#find by date
		return Days.find().fetch()[0]


Template.body.events
	"change input": (event) ->
		#something here

		dayId = '5609e149c3b286e5661e3dbe'
		oId = new Meteor.Collection.ObjectID( '5609e149c3b286e5661e3dbe');
		console.log 'Updating'

		
		Days.update( _id: dayId, { $set:{
			greatful1: $('#greatful1').val()
			greatful2: $('#greatful2').val()
			greatful3: $('#greatful3').val()
			greatDay1: $('#greatDay1').val()
			greatDay2: $('#greatDay2').val()
			greatDay3: $('#greatDay3').val()
			affirmation: $('#affirmation').val()
			amazingThings1: $('#amazingThing1').val()
			amazingThings2: $('#amazingThing2').val()
			amazingThings3: $('#amazingThing3').val()
			betterDay: $('#betterDay').val()
		}})

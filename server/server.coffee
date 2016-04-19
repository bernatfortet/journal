Meteor.publish( 'days', ->
	return Days.find(
		$or: [
			owner: @userId
		]
	)
)


###
#Accounts.onCreateUser (options, user) ->
#	console.log user

	
	if (options.profile)
		user.profile = options.profile
		user.profile.email = user.services.facebook.email

	return user
	
###

Accounts.validateLoginAttempt( ( data ) ->
	#console.log 'test', data
	#console.log data.user._id

	return true
)

Meteor.methods

	test: ->
		console.log 'test'

	createDay: ->
		#do not created it unless there's no day for today
		Days.insert({ ownerId: Meteor.userId(), date: new Date() })

	getCurrentUsersDay: ->
		Days.findOne()

		console.log 'asdf'

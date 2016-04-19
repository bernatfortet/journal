Push.allow send: (userId, notification) ->
  true
  # Allow all users to send

Meteor.methods

  serverNotification: (text, title) ->
    console.log 'Server notificiation'
    badge = 1
    Push.send
      from: 'push'
      title: title
      text: text
      #badge: badge
      #sound: 'airhorn.caf'
      payload:
        title: title
        text: text
        #historyId: result
      query: {}
    return

  userNotification: (text, title, userId) ->
    badge = 1
    Push.send
      from: 'push'
      title: title
      text: text
      badge: badge
      sound: 'airhorn.caf'
      payload:
        title: title
        #historyId: result
      query: userId: userId
    return

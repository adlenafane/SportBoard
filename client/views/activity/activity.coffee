Session.set 'activityFormVisible', 'hidden'

Template.activity.helpers
  activityOptions: [
    {
      label: "Renforcement"
    }
    {
      label: "Cardio"
    }
    {
      label: "Body Attack"
    }
  ]

  activityFeeling: [
    {
      group: "feeling"
    }
  ]

  activityPerformance: [
    {
      group: "performance"
    }
  ]

  isFormVisible: ->
    Session.get('activityFormVisible')

Template.activity.events
  'click #add-activity-button': (e) ->
    e.stopPropagation()
    if Session.get('activityFormVisible') == 'hidden'
      Session.set 'activityFormVisible', ''
    else
      Session.set 'activityFormVisible', 'hidden'

Session.set 'activityFormVisible', 'hidden'

compareLabel = (a, b) ->
  if a.label > b.label then return 1
  if a.label < b.label then return -1
  return 0

Template.activity.helpers
  activityMiscOptions: [
    {
      label: "Pilates"
    }
    {
      label: "Zen Shiatsu"
    }
    {
      label: "Zumba"
    }
    {
      label: "Stretching"
    }
  ].sort(compareLabel)

  activityMillsOptions: [
    {
      label: "Body Attack"
    }
    {
      label: "CXWorx"
    }
    {
      label: "SH'Bam"
    }
    {
      label: "Body Vive"
    }
    {
      label: "Body Pump"
    }
    {
      label: "Body Combat"
    }
    {
      label: "Body Step"
    }
  ].sort(compareLabel)

  activityCircuitOptions: [
    {
      label: "Circuit Welness"
    }
    {
      label: "Circuit Fessiers"
    }
    {
      label: "Circuit Saison"
    }
    {
      label: "Circuit Silhouette"
    }
    {
      label: "Circuit Cardio"
    }
    {
      label: "Circuit Minceur"
    }
  ].sort(compareLabel)

  activityFeeling: -> [
    {
      group: "feeling"
    }
  ]

  activityPerformance: -> [
    {
      group: "performance"
    }
  ]

  defaultTime: -> 45

  isFormVisible: ->
    Session.get('activityFormVisible')

Template.activity.events
  'click #add-activity-button': ->
    if Session.get('activityFormVisible') == 'hidden'
      Session.set 'activityFormVisible', ''
    else
      Session.set 'activityFormVisible', 'hidden'

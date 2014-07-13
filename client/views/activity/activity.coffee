Session.set 'activityFormVisible', 'hidden'

compareLabel = (a, b) ->
  if a.label > b.label then return 1
  if a.label < b.label then return -1
  return 0

Template.activity.rendered = ->
  $('.datetimepicker').datetimepicker
    pickTime: false
    defaultDate: moment()


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

  workouts: ->
    Workouts.find()

  isFormVisible: ->
    Session.get('activityFormVisible')

Template.activity.events
  'click #add-activity-button': ->
    if Session.get('activityFormVisible') == 'hidden'
      Session.set 'activityFormVisible', ''
    else
      Session.set 'activityFormVisible', 'hidden'

  'submit form#add-activity': (e) ->
    e.preventDefault()

    workout =
      date: $(e.target).find('[name=date]').val()
      type: $(e.target).find('[name=type]').val()
      duration: $(e.target).find('[name=duration]').val()
      feeling: $(e.target).find('[name=feeling]:checked').val()
      performance: $(e.target).find('[name=performance]:checked').val()

    console.log workout
    Session.set 'activityFormVisible', 'hidden'
    workout._id = Workouts.insert workout

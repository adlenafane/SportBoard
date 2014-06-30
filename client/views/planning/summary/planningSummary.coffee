Template.planningSummary.helpers
  planning: ->
    planning =
      date: moment().format("dddd D")
      lessons: [
        {
          hour: "9h30"
          name: "Zumba"
          duration: 30
        }
        {
          hour: "10h"
          name: "Abdos"
          duration: 45
        }
        {
          hour: "10h30"
          name: "Body Vive"
          duration: 45
        }
      ]
    return planning

Template.metrics.helpers
  steps: ->
    number = 6217
    objective = 10000
    steps =
      number: number
      objective: objective
      percent: parseFloat(100*number/objective).toFixed()
    return steps

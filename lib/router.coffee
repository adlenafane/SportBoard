Router.configure
  layoutTemplate: 'layout'
  yieldTemplates:
    header:
      to: 'header'

Router.map ->
  @route 'home',
    path: '/'
    template: 'home'

  @route 'planning',
    path: '/planning'
    template: 'planning'

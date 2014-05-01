//Router.configure({
//    layoutTemplate: 'layout',
//    loadingTemplate: 'loading'
//});
//
//
//Router.map(function() {
//    this.route('homePage', {
//        path: '/',
//        template: 'homePage'
//    });
//});
//
//requireLogin = function() {
//    if (!Meteor.user()) {
//        if (Meteor.loggingIn()) {
//            this.render(this.loadingTemplate);
//        }
//        else {
//            this.render("accessDenied");
//        }
//    }
//    this.pause();
//};
//
//Router.onBeforeAction('loading');

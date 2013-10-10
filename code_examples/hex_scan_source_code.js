//////// Hexscan Source Code ///////
//     © 2013 Don Graziano        //
//     therocketforever@me.com    //
//     +1 (734) 747-0412          //
////////////////////////////////////

//= require ../vendor/jquery
//= require ../vendor/handlebars
//= require ../vendor/ember
//= require ../vendor/ember-data
//= require ../vendor/geohex
//= require_tree .
//= require_self

var  HexScan = Ember.Application.create({
  LOG_TRANSITIONS: true,
  LOG_BINDINGS: true
});

HexScan.Router.map(function() {
  this.resource('introspectr');
  this.resource('tiles', function() {
    this.resource('tile', {path:':tile_id'});
  });
});

DS.RESTAdapter.reopen({
  namespace: 'api/'
});

DS.RESTAdapter.map('HexScan.Tile', {
  primaryKey: 'code'
});

HexScan.Store = DS.Store.extend({
  revision: 12,
//  adapter: 'DS.FixtureAdapter'
//  adapter: 'HexScan.Adapter'
});

HexScan.Tile = DS.Model.extend({
  code:      DS.attr('string'),
  graticule: DS.attr('number'),
  
  bounded_bys: DS.hasMany('HexScan.Tile'),
  bounded_tiles: DS.hasMany('HexScan.Tile'),
  adjacent_tiles: DS.hasMany('HexScan.Tile')
});


HexScan.Route = Em.Route.extend({
  setupController: function(controller, model) {
    var introspectr = this.controllerFor('introspectr');
    var tiles = this.controllerFor('tilesIndex');
    navigator.geolocation.getCurrentPosition(function(result) {
      introspectr.geoLocation(result);
      introspectr.geoHex();
      console.log(introspectr.zoneCode);
      tiles.set('model', HexScan.Tile.find({code: introspectr.zoneCode}));
    });
    console.log(introspectr.zoneCode);
  }
});

HexScan.IndexRoute = Em.Route.extend({
  renderTemplate: function() {
    this.render('tiles/index', {
      into: 'application'
    });
  },
});


HexScan.TileRoute = Em.Route.extend({
  renderTemplate: function() {
    this.render({into: 'application'})
  }
});

HexScan.ApplicationController = Em.Controller.extend({
  needs: ['introspectr', 'tilesIndex'],
  zoneCodeBinding: 'controllers.introspectr.zoneCode',
  latitudeBinding: 'controllers.introspectr.latitude',
  longitudeBinding: 'controllers.introspectr.longitude',
  levelBinding: 'controllers.introspectr.level'
});


HexScan.IntrospectrController = Em.Controller.extend({
  level: 7,
  geoLocation: function (position) {
    this.set('latitude', position.coords.latitude);
    this.set('longitude', position.coords.longitude);
    this.set('level', 7);
  },
  geoHex: function(geohex) {
    this.set('zoneCode', GEOHEX.getZoneByLocation(
    this.latitude,
    this.longitude,
    this.level).code);
  }
});

HexScan.TilesIndexController = Ember.ArrayController.extend({
  needs: ['introspectr'],
  zoneCodeBinding: 'controllers.introspectr.zoneCode',
  levelBinding: 'controllers.introspectr.level'
});

//HexScan.Tile.FIXTURES = [{
//  id: 1,
//  code: "PF4175375"
//}, {
//  id: 2,
//  code: "PF4175372"
//}, {
//  id: 3,
//  code: "PF4175374"
//}, {
//  id: 4,
//  code: "PF4175386"
//}];
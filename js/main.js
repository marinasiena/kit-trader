( function() {
	'use strict';

	const app = angular.module( 'shopulars', [] );

	app.controller( 'ItemsController', function( shopItems, $q ) {

		this.allItems = {};

		$q.when( shopItems.get( './data/items.json' ) )
			.then( ( response ) => {
				this.allItems = response;
				console.log( 'allItems ', this.allItems );
			} ).catch( ( error ) => {
				console.log( 'damnit ', error );
			} );


	} );


} )(); //end iife

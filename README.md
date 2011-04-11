Borderbox for Compass
====================

Use box-sizing: border-box; with impunity. Borderbox outputs equivalent CSS for IE6 & 7


Installation
============

From the command line:

	gem install compass-borderbox


Usage
============

Add to a project:

	require "borderbox"

And then import the mixins to your base SASS/SCSS file:

	@import "borderbox";


Mixin
============

#### borderbox($width [$height], [$padding], [$border]);

Sets box-sizing-compliant values, as well as legacy values for < IE 8

	@include borderbox(200px, 10px 0);

	@include borderbox(200px 100px, 10px 5px 0, 4px solid black);

	@include borderbox(200px, 10px, 3px 0 3px 5px);

Compiles to:

	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
	padding: 10px 0;
	width: 200px;
	*width: 200px;

	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
	padding: 10px 5px 0;
	border: 4px solid black;
	width: 200px;
	*width: 182px;
	height: 100px;
	*height: 82px;

	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
	padding: 10px;
	border-width: 3px 0 3px 5px;
	width: 200px;
	*width: 175px;


Global Variables
============

	$global-border-box: false !default;

Set to true if you prefer declaring a global box-sizing prop (Note: you should do this. Otherwise you must constantly check to see if box-sizing is enabled for a property).

Override in your base SASS/SCSS file:

	$global-border-box: true;

Then, add a global CSS rule:

	* {
		@include box-sizing(border-box);
	}

Afterwards your compiled code will be much more compact:

	@include borderbox(200px 100px, 10px 5px 0, 4px solid black);

Compiles to:

	padding: 10px 5px 0;
	border: 4px solid black;
	width: 200px;
	*width: 182px;
	height: 100px;
	*height: 82px;

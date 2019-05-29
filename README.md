# Gyrocycle

Blog theme for [repla.app](https://repla.app).

It uses [Raster](https://github.com/robenkleene/raster) to construct a layout using typographic grid.

## Raster

To show the raster grid, import the `raster.js` JavaScript in the [HTML `<head>`](_includes/head.html) element:

	<script src="/vendor/raster/dist/js/raster.js"></script>

Add the following classes to the [`<body>` and grid `<div>` elements](_layouts/default.html):

	<body class="raster-show-baseline">
	  <div id="grid" class="raster-show-guidelines">


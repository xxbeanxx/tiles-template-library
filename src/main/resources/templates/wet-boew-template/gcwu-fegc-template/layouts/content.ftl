<!DOCTYPE html>
<!--[if lt IE 9]><html class="no-js lt-ie9" lang="${localeinfo['language']}" dir="ltr"><![endif]-->
<!--[if gt IE 8]><!--><html class="no-js" lang="${localeinfo['language']}" dir="ltr"><!--<![endif]-->
	<head>
		
		<meta charset="utf-8">

<!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
     wet-boew.github.io/wet-boew/License-en.html / wet-boew.github.io/wet-boew/Licence-fr.html -->
     
		<title>Content page - GCWU theme - Working examples - Web Experience Toolkit</title>
		
		<meta content="width=device-width,initial-scale=1" name="viewport">

		<@tiles.insertAttribute name="metadata-tile"/>

		<!--[if gte IE 9 | !IE ]><!-->
		<link href="${contextpath}/resource/theme-gcwu-fegc/assets/favicon.ico" rel="icon" type="image/x-icon">
		<link rel="stylesheet" href="${contextpath}/resource/theme-gcwu-fegc/css/theme.min.css">
		<!--<![endif]-->

		<!--[if lt IE 9]>
		<link href="${contextpath}/resource/theme-gcwu-fegc/assets/favicon.ico" rel="shortcut icon" />
		<link rel="stylesheet" href="${contextpath}/resource/theme-gcwu-fegc/css/ie8-theme.min.css" />
		<script src="${contextpath}/resource/wet-boew/js/jquery/1.11.1/jquery.min.js"></script>
		<script src="${contextpath}/resource/wet-boew/js/ie8-wet-boew.min.js"></script>
		<![endif]-->

		<noscript><link rel="stylesheet" href="${contextpath}/resource/wet-boew/css/noscript.min.css" /></noscript>
	</head>

	<body vocab="http://schema.org/" typeof="WebPage">
		<ul id="wb-tphp">
			<li class="wb-slc"><a class="wb-sl" href="#wb-cont">${messages['wb-tphp.wb-cont']}</a></li>
			<li class="wb-slc visible-sm visible-md visible-lg"><a class="wb-sl" href="#wb-info">${messages['wb-tphp.wb-info']}</a></li>
		</ul>

		<@tiles.insertAttribute name="header-tile"/>
		
		<main role="main" property="mainContentOfPage" class="container">
			<@tiles.insertAttribute name="contentheader-tile"/>
			<@tiles.insertAttribute name="content-tile"/>
			<@tiles.insertAttribute name="contentfooter-tile"/>
		</main>

		<@tiles.insertAttribute name="footer-tile"/>
		
		<!--[if gte IE 9 | !IE ]><!-->
		<script src="${contextpath}/resource/wet-boew/js/jquery/2.1.4/jquery.js"></script>
		<script src="${contextpath}/resource/wet-boew/js/wet-boew.min.js"></script>
		<!--<![endif]-->
		
		<!--[if lt IE 9]>
		<script src="${contextpath}/resource/wet-boew/js/ie8-wet-boew2.min.js"></script>
		<![endif]-->

		<script src="${contextpath}/resource/theme-gcwu-fegc/js/theme.min.js"></script>
	</body>
</html>

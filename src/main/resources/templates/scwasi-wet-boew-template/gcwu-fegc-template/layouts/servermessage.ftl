<#assign s=JspTaglibs["/struts-tags"]/>
<#assign tiles=JspTaglibs["http://tiles.apache.org/tags-tiles"]/>
<@s.url value="/static-content" var="staticcontent"/>
<!DOCTYPE html>
<!--[if lt IE 9]><html class="no-js lt-ie9" lang="en" dir="ltr"><![endif]-->
<!--[if gt IE 8]><!--><html class="no-js" lang="en" dir="ltr"><!--<![endif]-->
	<head>

		<meta charset="utf-8">
<!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
     wet-boew.github.io/wet-boew/License-en.html / wet-boew.github.io/wet-boew/Licence-fr.html -->
	
		<title>Message title - Government of Canada Web Usability theme</title>
		
		<meta content="width=device-width,initial-scale=1" name="viewport">
		
		<meta name="robots" content="noindex, nofollow, noarchive">

		<!--[if gte IE 9 | !IE ]><!-->
		<link href="${staticcontent}/theme-gcwu-fegc/assets/favicon.ico" rel="icon" type="image/x-icon">
		<link rel="stylesheet" href="${staticcontent}/theme-gcwu-fegc/css/theme-srv.min.css">
		<!--<![endif]-->

		<!--[if lt IE 9]>
		<link href="${staticcontent}/theme-gcwu-fegc/assets/favicon.ico" rel="shortcut icon" />
		<link rel="stylesheet" href="${staticcontent}/theme-gcwu-fegc/css/ie8-theme-srv.min.css" />
		<script src="${staticcontent}/wet-boew/js/jquery/1.11.1/jquery.min.js"></script>
		<script src="${staticcontent}/wet-boew/js/ie8-wet-boew.min.js"></script>
		<![endif]-->

		<noscript><link rel="stylesheet" href="${staticcontent}/wet-boew/css/noscript.min.css" /></noscript>
	</head>

	<body vocab="http://schema.org/" typeof="WebPage">
		<header role="banner" class="container">
			<div id="wb-bnr" class="row">
				<div class="row">
					<div class="col-sm-6">
						<object id="gcwu-sig" type="image/svg+xml" tabindex="-1" role="img" data="${staticcontent}/theme-gcwu-fegc/assets/sig-alt-en.svg" aria-label="Government of Canada"></object>
					</div>
					<div class="col-sm-6">
						<object id="wmms" type="image/svg+xml" tabindex="-1" role="img" data="${staticcontent}/theme-gcwu-fegc/assets/wmms-alt.svg" aria-label="Symbol of the Government of Canada"></object>
					</div>
				</div>
			</div>
		</header>

		<main role="main" property="mainContentOfPage" class="container">
			<div class="row mrgn-tp-lg">
				<h1 class="wb-inv">Message title / <span lang="fr">Titre du message</span></h1>

				<section class="col-md-6">
					<h2><span class="glyphicon glyphicon-warning-sign mrgn-rght-md"></span> Message title</h2>
					<p>Sample text. Sample text. Sample text. Sample text. Sample text. Sample text. Sample text. Sample text. Sample text. Sample text. Sample text. Sample text.</p>
				</section>

				<section class="col-md-6" lang="fr">
					<h2><span class="glyphicon glyphicon-warning-sign mrgn-rght-md"></span> Titre du message</h2>
					<p>Texte d'exemple. Texte d'exemple. Texte d'exemple. Texte d'exemple. Texte d'exemple. Texte d'exemple. Texte d'exemple. Texte d'exemple. Texte d'exemple.</p>
				</section>
			</div>
		</main>

		<!--[if gte IE 9 | !IE ]><!-->
		<script src="${staticcontent}/wet-boew/js/jquery/2.1.4/jquery.js"></script>
		<script src="${staticcontent}/wet-boew/js/wet-boew.min.js"></script>
		<!--<![endif]-->

		<!--[if lt IE 9]>
		<script src="${staticcontent}/wet-boew/js/ie8-wet-boew2.min.js"></script>
		<![endif]-->

		<script src="${staticcontent}/theme-gcwu-fegc/js/theme.min.js"></script>
	</body>
</html>
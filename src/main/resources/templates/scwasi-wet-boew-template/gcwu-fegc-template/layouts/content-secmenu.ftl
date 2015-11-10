<!DOCTYPE html>
<!--[if lt IE 9]><html class="no-js lt-ie9" lang="${localeinfo['language']}" dir="ltr"><![endif]-->
<!--[if gt IE 8]><!--><html class="no-js" lang="${localeinfo['language']}" dir="ltr"><!--<![endif]-->
	<head>
		<meta charset="utf-8">
		
<!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
     wet-boew.github.io/wet-boew/License-en.html / wet-boew.github.io/wet-boew/Licence-fr.html -->
     
		<title>Content page - GCWU theme - Working examples - Web Experience Toolkit</title>
		
		<meta content="width=device-width,initial-scale=1" name="viewport">

		<meta name="description" content="Web Experience Toolkit (WET) includes reusable components for building and maintaining innovative Web sites that are accessible, usable, and interoperable. These reusable components are open source software and free for use by departments and external Web communities">
		<meta name="dcterms.title" content="Content page - Web Experience Toolkit">
		<meta name="dcterms.creator" content="French name of the content author / Nom en français de l'auteur du contenu">
		<meta name="dcterms.issued" title="W3CDTF" content="Date published (YYYY-MM-DD) / Date de publication (AAAA-MM-JJ)">
		<meta name="dcterms.modified" title="W3CDTF" content="Date modified (YYYY-MM-DD) / Date de modification (AAAA-MM-JJ)">
		<meta name="dcterms.subject" title="scheme" content="French subject terms / Termes de sujet en français">
		<meta name="dcterms.language" title="ISO639-2" content="${localeinfo['iso3language']}">

		<#-- load closure template scripts -->
		<script type="text/javascript" src="http://templates.services.gc.ca/app/cls/WET/utweb/v4_0_17/js/compiled/soyutils.js"></script>
		<script type="text/javascript" src="http://templates.services.gc.ca/app/cls/WET/utweb/v4_0_17/js/compiled/wet-en.js"></script>

		<noscript>
			<#-- Write closure fall-back static file -->
			<!-- /ROOT/app/cls/WET/utweb/v4_0_17/static/refTop.html -->
			<!--[if gte IE 9 | !IE ]><!-->
				<link href="http://templates.services.gc.ca/app/cls/WET/utweb/v4_0_17/assets/favicon.ico" rel="icon" type="image/x-icon">
				<link rel="stylesheet" href="http://templates.services.gc.ca/app/cls/WET/utweb/v4_0_17/css/wet-boew.min.css">
			<!--<![endif]-->
			
			<link rel="stylesheet" href="http://templates.services.gc.ca/app/cls/WET/utweb/v4_0_17/css/theme.min.css">
			
			<!--[if lt IE 9]>
				<link href="http://templates.services.gc.ca/app/cls/WET/utweb/v4_0_17/assets/favicon.ico" rel="shortcut icon" />
				<link rel="stylesheet" href="http://templates.services.gc.ca/app/cls/WET/utweb/v4_0_17/css/ie8-wet-boew.min.css" />
				<link rel="stylesheet" href="http://templates.services.gc.ca/app/cls/WET/utweb/v4_0_17/css/ie8-theme.min.css" />
				<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
				<script src="http://templates.services.gc.ca/app/cls/WET/utweb/v4_0_17/js/ie8-wet-boew.min.js"></script>
			<![endif]-->
		</noscript>
		
		<#-- Write closure template -->
		<script type="text/javascript">
			document.write(
				wet.builder.refTop({
					templateDomain : "http://templates.services.gc.ca"
				})
			);
		</script>
	</head>

	<body vocab="http://schema.org/" typeof="WebPage">
		<div id="def-top">	
			<#-- Write closure fall-back static file -->
			<!-- /ROOT/app/cls/WET/utweb/v4_0_14/static/top-en.html -->

			<ul id="wb-tphp">
				<li class="wb-slc"><a class="wb-sl" href="#wb-cont">Skip to main content</a></li>
				<li class="wb-slc visible-sm visible-md visible-lg"><a class="wb-sl" href="#wb-info">Skip to "About this site"</a></li>
				<li class="wb-slc visible-md visible-lg"><a class="wb-sl" href="#wb-sec">Skip to section menu</a></li>
			</ul>
	
			<@tiles.insertAttribute name="header-tile"/>

			<#-- Write closure template -->
			<script type="text/javascript">
				var defTop = document.getElementById("def-top");
				defTop.outerHTML = wet.builder.top({
						templateDomain: "http://templates.services.gc.ca", 
						lngLinks:[{
								lang : "fr",
								href : "GREG", 
								text : "Français"
						}]
				});
			</script>
		</div>
		
		<div class="container">
			<div class="row">
				<main role="main" property="mainContentOfPage" class="col-md-9 col-md-push-3">
					<h1 id="wb-cont" property="name">Content page</h1>
			
					<@tiles.insertAttribute name="content-tile"/>
			
					<dl id="wb-dtmd">
						<dt>${messages['wb-dtmd.date-modified']}</dt>
						<dd><time property="dateModified">2014-08-13</time></dd>
					</dl>
				</main>

				<nav role="navigation" id="wb-sec" typeof="SiteNavigationElement" class="col-md-3 col-md-pull-9 visible-md visible-lg">
					<h2>${messages['wb-sec.section-menu']}</h2>
					<ul class="list-group menu list-unstyled">
						<li>
							<h3 class="wb-navcurr">Content page - Secondary menu</h3>
							<ul class="list-group menu list-unstyled">
								<li><a class="list-group-item" href="#">Item&#32;1</a></li>
								<li><a class="list-group-item" href="#">Item&#32;2</a></li>
								<li><a class="list-group-item" href="#">Item&#32;3</a></li>
								<li><a class="list-group-item" href="#">Item&#32;4</a></li>
								<li><a class="list-group-item" href="#">Item&#32;5</a></li>
								<li><a class="list-group-item" href="#">Item&#32;6</a></li>
								<li><a class="list-group-item" href="#">Item&#32;7</a></li>
								<li><a class="list-group-item" href="#">Item&#32;8</a></li>
							</ul>
						</li>
					</ul>
				</nav>				
			</div>
		</div>

		<@tiles.insertAttribute name="footer-tile"/>
		
		<#-- Write closure template -->
		<script type="text/javascript">
			var defFooter = document.getElementById("def-footer");
			defFooter.outerHTML = wet.builder.footer({
					templateDomain: "http://templates.services.gc.ca",
					contactLinks: [{
							href: "#",
							text: "Link 1"
					}, {
							href: "#",
							text: "Link 2"
					}, {
							href: "#",
							text: "Link 3"
					}]
			});
			</script>
			
			<#-- Write closure template -->
			<script type="text/javascript">
				document.write(wet.builder.refFooter({ templateDomain: "http://templates.services.gc.ca" }));
			</script>
	</body>
</html>
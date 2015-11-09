<#assign s=JspTaglibs["/struts-tags"]/>
<#assign tiles=JspTaglibs["http://tiles.apache.org/tags-tiles"]/>
<@s.url value="/static-content" var="staticcontent"/>
<header role="banner">
	<div id="wb-bnr" class="container">
		<section id="wb-lng" class="visible-md visible-lg text-right">
			<h2 class="wb-inv">Language selection</h2>
			<div class="row">
				<div class="col-md-12">
					<ul class="list-inline margin-bottom-none">
						<li><a lang="fr" href="http://www.canada.ca/fr/index.html">Français</a></li>
					</ul>
				</div>
			</div>
		</section>
		<div class="row">
			<div class="brand col-xs-8 col-sm-9 col-md-6">
				<a href="http://www.canada.ca/en/index.html">
					<object type="image/svg+xml" tabindex="-1" data="http://templates.services.gc.ca/app/cls/wet/gcweb/v4_0_17/assets/sig-blk-en.svg"></object><span class="wb-inv"> Government of Canada</span>
				</a>
			</div>
			<section class="wb-mb-links col-xs-4 col-sm-3 visible-sm visible-xs" id="wb-glb-mn">
				<h2>Search and menus</h2>
				<ul class="list-inline text-right chvrn">
					<li><a href="#mb-pnl" title="Search and menus" aria-controls="mb-pnl" class="overlay-lnk" role="button"><span class="glyphicon glyphicon-search"><span class="glyphicon glyphicon-th-list"><span class="wb-inv">Search and menus</span></span></span></a></li>
				</ul>
				<div id="mb-pnl"></div>
			</section>
			<section id="wb-srch" class="col-xs-6 text-right visible-md visible-lg">
				<h2 class="wb-inv">Search</h2>
				<form action="http://recherche-search.gc.ca/rGs/s_r?#wb-land" method="post" name="cse-search-box" role="search" class="form-inline">
					<div class="form-group">
						<label for="wb-srch-q" class="wb-inv">Search website</label>
						<input name="cdn" value="canada" type="hidden">
						<input name="st" value="s" type="hidden">
						<input name="num" value="10" type="hidden">
						<input name="langs" value="eng" type="hidden">
						<input name="st1rt" value="0" type="hidden">
						<input name="s5bm3ts21rch" value="x" type="hidden">
						<input id="wb-srch-q" list="wb-srch-q-ac" class="wb-srch-q form-control" name="q" type="search" value="" size="27" maxlength="150" placeholder="Search Canada.ca">
						<datalist id="wb-srch-q-ac">
						<!--[if lte IE 9]><select><![endif]-->
						<!--[if lte IE 9]></select><![endif]-->
						</datalist>
					</div>
					<div class="form-group submit">
						<button type="submit" id="wb-srch-sub" class="btn btn-primary btn-small" name="wb-srch-sub"><span class="glyphicon-search glyphicon"></span><span class="wb-inv">Search</span></button>
					</div>
				</form>
			</section>
		</div>
	</div>
	<nav role="navigation" id="wb-sm" class="wb-menu visible-md visible-lg" typeof="SiteNavigationElement">
		<h2 class="wb-inv">Topics menu</h2>
		<div class="container nvbar">
			<div class="row">
				<ul class="list-inline menu">
					<li><a href="http://wet-boew.github.io/wet-boew/index-en.html">WET project</a></li>
					<li><a href="http://wet-boew.github.io/wet-boew/docs/start-en.html#implement">Implement WET</a></li>
					<li><a href="http://wet-boew.github.io/wet-boew/docs/start-en.html">Contribute to WET</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<nav role="navigation" id="wb-bc" class="" property="breadcrumb">
		<h2 class="wb-inv">You are here:</h2>
		<div class="container">
			<div class="row">
				<ol class="breadcrumb">
					<li><a href="http://www.canada.ca/en/index.html">Home</a></li>
				</ol>
			</div>
		</div>
	</nav>
</header>

<#--
<#assign tiles=JspTaglibs["http://tiles.apache.org/tags-tiles"]/>
<#assign tilesx=JspTaglibs["http://tiles.apache.org/tags-tiles-extras"]/>
<@tilesx.useAttribute name="breadcrumbs" id="breadcrumbs" classname="java.util.List"/>
<#if breadcrumbs??>
-->
<nav role="navigation" id="wb-bc" property="breadcrumb">
	<h2>You are here:</h2>
	<div class="container">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="http://wet-boew.github.io/v4.0-ci/index-en.html">Home</a></li>
				<li><a href="http://wet-boew.github.io/v4.0-ci/demos/index-en.html">Working examples</a></li>
				<li><a href="index-en.html">GCWU theme</a></li>
				<li>Content page</li>
			</ol>
		</div>
	</div>
</nav>
<#--
</#if>
-->

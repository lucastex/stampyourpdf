<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<title>:: StampYourPdf.com ::</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta http-equiv="content-script-type" content="text/javascript" />
		<meta name="copyright" content="Stamp Your PDF Copyright 2011" />
		<meta name="robots" content="index, follow, noimageclick, noimageindex" />
		<meta name="description" content="Online service to stamp pdf files" />
		<meta name="keywords" content="pdf, watermark, stamp, free, online" />
		<meta property="og:title" content="Stamp your PDF!"/> 
		<meta property="og:type" content="website"/> 
		<meta property="og:image" content="http://www.stampyourpdf.com/logo.png" /> 
		<meta property="og:url" content="http://www.stampyourpdf.com" /> 
		<meta property="og:site_name" content="Stamp your PDF!" /> 
		<meta property="fb:admins" content="1254872435" /> 
		<r:require module="stampyourpdf" />		
		<link href='http://fonts.googleapis.com/css?family=Cabin' rel='stylesheet' type='text/css' />
		<r:layoutResources/>
		
		<style>
			#share-twitter {
				left: 480px; 
				top: 20px; 
				position: absolute;
			}
			#share-fb {
				left: 420px; 
				top: 22px; 
				position: absolute;
			}
		</style>
		
		<r:script type="text/javascript">
		
			function trackEvent(event) {				
				var pageTracker = _gat._getTracker("UA-23656287-1");
				pageTracker._trackEvent('PDF', event);
			}
			
			function trackError(code, msg) {				
				var pageTracker = _gat._getTracker("UA-23656287-1");
				pageTracker._trackEvent('error', code, msg);
			}
			
			$(document).ready(function () {
				$.ui.accordion.animations.custom = function(options) {
					this.slide(options, {
						easing: options.down ? 'easeInOutCirc' : 'easeInOutCirc',
						duration: options.down ? 500 : 500
					});
				};
				$('#content').accordion({
					header: 'a.section',
					selectedClass: 'active',
					autoHeight: false,
					clearStyle: true,
					animated: 'custom',
					navigation: true,
					navigationFilter: function() {
						
						// Going to this page with a parameter matching a section name will open the accordion at it automatically
						// e.g. http://www.domain.com/index.html?section=services
						return (this.name.toLowerCase() == $(document).getUrlParam('section'));
					}
				});
				$('a.thumb').flyout({
					loader: 'customLoader'
				});
				
				// This fixes hovering over section headers in ie6
				$('a.section').hover(function() {$(this).addClass('hover');}, function() {$(this).removeClass('hover');});
				
				<g:if test="${flash.error}">
				
					alert('${flash.error}');
					
					<g:if test="${flash.errorCode}">
						trackError('${flash.errorCode}', '${flash.error}');
					</g:if>
				
				</g:if>
				
				
			});
		</r:script>
	</head>
	<body>
		<g:uploadForm controller="public" action="stamp" onsubmit="trackEvent('create');">
		
			<div id="container">
				<a accesskey="t" name="top"></a>
				<p class="hidden skip"><a href="#cn">Skip to content</a></p>
				<div id="header">
					<h1><g:link controller="public" action="index">Stamp Your Pdf</g:link></h1>
				</div>
				<a accesskey="c" name="cn"></a>
				<div id="contentContainer">
					<div id="content">
						<a class="section" name="welcome"><h3><g:message code="public.index.welcometab.title" /></h3></a>
						<div class="panel">
							<p><g:message code="public.index.welcometab.content.1" /></p>
							<p><g:message code="public.index.welcometab.content.2" /></p>
						</div>
						<a class="section" name="about"><h3 id="about"><g:message code="public.index.pdftab.title" /></h3></a>
						<div class="panel">
							<p><g:message code="public.index.pdftab.content.1" /></p>
							<p><input type="file" name="file" /></p>
						</div>
						<a class="section" name="services"><h3><g:message code="public.index.stamptab.title" /></h3></a>
						<div class="panel">
							<p>
								<g:message code="public.index.stamptab.content.1.pre" />
								<strong>_PN_</strong>
								<g:message code="public.index.stamptab.content.1.middle" />
								<strong>_PT_</strong> 
								<g:message code="public.index.stamptab.content.1.pos" />
							</p>
							<p><g:message code="public.index.stamptab.content.2" /></p>
							<p><g:message code="public.index.stamptab.content.3.label" />: <input type="text" name="text" size="45" maxlength="100" />
						</div>
						<a class="section" name="portfolio"><h3><g:message code="public.index.filetab.title" /></h3></a>
						<div class="panel" id="portfolioPanel">
							<p><g:message code="public.index.filetab.content.1" /></p>
							<p>
								<input type="submit" value="${message(code:'public.index.filetab.content.1.submit.label')}">
							</p>
						</div>
					</div>
				</div>
				<div id="footer">

					<div id="share-twitter">
						
						<a href="http://twitter.com/share" class="twitter-share-button" data-count="vertical" data-via="lucastex">Tweet</a>
						<script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
					
					</div>
					<div id="share-fb">
					
						<div id="fb-root"></div>
						<script src="http://connect.facebook.net/en_US/all.js#xfbml=1"></script>
						<fb:like href="www.stampyourpdf.com" send="false" layout="box_count" width="450" show_faces="true" font=""></fb:like>

					</div>
					
					<p>	
						This site was developed using <a href="http://grails.org" target="_blank">Grails</a><br />
						and is fully opensource. You can check <br />
						its source code <a href="http://github.com/lucastex/stampyourpdf">here</a>.<br />
						<br />
						<a style="margin-left: 150px" href="http://twitter.com/lucastex">@lucastex</a>
					</p>
					
				</div>
			</div>
		</g:uploadForm>
		<r:layoutResources/>
		<script type="text/javascript">

		  var _gaq = _gaq || [];
		  _gaq.push(['_setAccount', 'UA-23656287-1']);
		  _gaq.push(['_setDomainName', '.stampyourpdf.com']);
		  _gaq.push(['_trackPageview']);

		  (function() {
		    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		  })();		
		</script>
	</body>
</html>
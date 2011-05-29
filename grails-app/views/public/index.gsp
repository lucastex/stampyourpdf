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
		<r:require module="stampyourpdf" />		
		<r:layoutResources/>
		
		<r:script type="text/javascript">
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
			});
		</r:script>
	</head>
	<body>
		<g:uploadForm controller="public" action="stamp">
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
								<strong>[PN]</strong>
								<g:message code="public.index.stamptab.content.1.middle" />
								<strong>[PT]</strong> 
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
					<!-- EDIT [Contact details] -->
					<p>Tel: +44(0) 123 456 789<br />
						Email: <a href="mailto:yourname@domain.com"><span>yourname</span>@domain.com</a><br />
						ICQ: 78794356<br />
						Twitter: username</p>
					<!-- END EDIT -->
				</div>
			</div>
		</g:uploadForm>
		<r:layoutResources/>
	</body>
</html>
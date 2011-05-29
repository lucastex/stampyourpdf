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
						duration: options.down ? 1000 : 1000
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
		<div id="container">
			<a accesskey="t" name="top"></a>
			<p class="hidden skip"><a href="#cn">Skip to content</a></p>
			<div id="header">
				<!-- EDIT [Site root URL, Sitename (Put the span around something in your sitename that you want to be the contrasting colour, i.e. the first word, first letter etc.)] -->
				<h1><a href="#"><span>Your</span> Sitename</a></h1>
				<!-- END EDIT -->
			</div>
			<a accesskey="c" name="cn"></a>
			<div id="contentContainer">
				<div id="content">
					<a class="section" name="welcome"><h3>Welcome</h3></a>
					<div class="panel">
						<p>Fusce arcu eros, bibendum vel, porttitor id, luctus eu, libero. <a href="#">Nam magna turpis</a>, consectetuer quis, rutrum id, porta id, sem. Nam quam. Donec in dui. Nullam tristique lacus pulvinar nunc. Integer bibendum tellus. Nullam et est in nibh aliquam posuere. Praesent nibh. In in sem nec nisl tristique placerat. <a href="#">Nulla ac dolor</a> sed ipsum accumsan pellentesque. Nulla facilisi. Phasellus adipiscing urna. Nulla nulla. Quisque mollis. Sed quam tortor, sollicitudin in, laoreet nec, ultricies vel, justo. Donec nec arcu.</p>
						<p>Cras nec augue. Mauris dui lectus, bibendum sed, suscipit ac, lobortis ut, dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum eu arcu at velit volutpat aliquam. <a href="#">Proin congue arcu</a>. Suspendisse at eros. Aenean molestie consectetuer sapien. Quisque tortor velit, consectetuer ut, gravida quis, ornare non, libero. Sed facilisis purus sit amet dui. Fusce rutrum urna ac nisi sodales posuere.</p>
					</div>
					<a class="section" name="about"><h3 id="about">About</h3></a>
					<div class="panel">
						<p>Cras volutpat porta felis. Pellentesque tempus purus quis erat. Suspendisse in lectus. Ut ultrices nibh vitae tellus. <a href="#">Vivamus aliquam</a> lacus. Vestibulum ante ipsum primis in faucibus orci.</p>
						<p>Example unordered list in general text:</p>
						<ul>
							<li><span>Item</span></li>
							<li><span>Item</span></li>
							<li><span>Item</span></li>
						</ul>
						<p>Example ordered list in general text:</p>
						<ol>
							<li><span>Item</span></li>
							<li><span>Item</span></li>
							<li><span>Item</span></li>
						</ol>
						<p>Example tabular data in general text:</p>
						<table>
							<thead>
								<tr>
									<td>Column 1</td>
									<td>Column 2</td>
									<td>Column 3</td>
									<td>Column 4</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>data</td>
									<td>data</td>
									<td>data</td>
									<td>data</td>
								</tr>
								<tr>
									<td>data</td>
									<td>data</td>
									<td>data</td>
									<td>data</td>
								</tr>
								<tr>
									<td>data</td>
									<td>data</td>
									<td>data</td>
									<td>data</td>
								</tr>
							</tbody>
						</table>
					</div>
					<a class="section" name="services"><h3>Services</h3></a>
					<div class="panel">
						<p>Fusce arcu eros, bibendum vel, porttitor id, luctus eu, libero. <a href="#">Nam magna turpis</a>, consectetuer quis, rutrum id, porta id, sem. Nam quam. Donec in dui. Nullam tristique lacus pulvinar nunc. Integer bibendum tellus. Nullam et est in nibh aliquam posuere. Praesent nibh. In in sem nec nisl tristique placerat. <a href="#">Nulla ac dolor</a> sed ipsum accumsan pellentesque. Nulla facilisi. Phasellus adipiscing urna. Nulla nulla. Quisque mollis. Sed quam tortor, sollicitudin in, laoreet nec, ultricies vel, justo. Donec nec arcu.</p>
						<p>Example services list:</p>
						<ul>
							<li><span>Item</span></li>
							<li><span>Item</span></li>
							<li><span>Item</span></li>
							<li><span>Item</span></li>
							<li><span>Item</span></li>
							<li><span>Item</span></li>
						</ul>
					</div>
					<a class="section" name="portfolio"><h3>Portfolio</h3></a>
					<div class="panel" id="portfolioPanel">
						<p>Fusce arcu eros, bibendum vel, porttitor id, luctus eu, libero. <a href="#">Nam magna turpis</a>, consectetuer quis, rutrum id, porta id, sem. Nam quam. Donec in dui. Nullam tristique lacus pulvinar nunc. Integer bibendum.</p>
						<p>Vertically with a description:</p>
						<a class="thumb" title="Item 1" href="/assets/images/full.gif"><img src="/assets/images/thumb.gif" width="80px" height="80px" alt="Item 1" /></a>
						<p>Fusce arcu eros, bibendum vel, porttitor id, luctus eu, libero. <a href="#">Nam magna turpis</a>, consectetuer quis, rutrum id, porta id, sem. Nam quam. Donec in dui. Nullam tristique lacus pulvinar nunc. Integer bibendum.</p>
						<a class="thumb" title="Item 2" href="/assets/images/full.gif"><img src="/assets/images/thumb.gif" width="80px" height="80px" alt="Item 2" /></a>
						<p>Fusce arcu eros, bibendum vel, porttitor id, luctus eu, libero. <a href="#">Nam magna turpis</a>, consectetuer quis, rutrum id, porta id, sem. Nam quam. Donec in dui. Nullam tristique lacus pulvinar nunc. Integer bibendum.</p>
						<p>Or just in a grid with no text:</p>
						<a class="thumb" title="Item 3" href="/assets/images/full.gif"><img src="/assets/images/thumb.gif" width="80px" height="80px" alt="Item 3" /></a>
						<a class="thumb" title="Item 4" href="/assets/images/full.gif"><img src="/assets/images/thumb.gif" width="80px" height="80px" alt="Item 4" /></a>
						<a class="thumb" title="Item 5" href="/assets/images/full.gif"><img src="/assets/images/thumb.gif" width="80px" height="80px" alt="Item 5" /></a>
						<a class="thumb" title="Item 6" href="/assets/images/full.gif"><img src="/assets/images/thumb.gif" width="80px" height="80px" alt="Item 6" /></a>
						<a class="thumb" title="Item 7" href="/assets/images/full.gif"><img src="/assets/images/thumb.gif" width="80px" height="80px" alt="Item 7" /></a>
						<a class="thumb" title="Item 8" href="/assets/images/full.gif"><img src="/assets/images/thumb.gif" width="80px" height="80px" alt="Item 8" /></a>
						<!-- NOTE [Use this element below a grid with no other elements below it, otherwise the panel won't expand the background around the grid. This is not the nicest or my preferred method but that can't be used as it destroys the accordion.] -->
						<div class="clear"></div>
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
		<r:layoutResources/>
	</body>
</html>
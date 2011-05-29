modules = {
	
    stampyourpdf {
        dependsOn 'jquery'
        resource url: '/assets/javascript/jquery-ui-custom-1.6b.min.js'
        resource url: '/assets/javascript/jquery.flyout.js'
        resource url: '/assets/javascript/jquery.geturlparam.js'
        resource url: '/assets/css/reset.css'
        resource url: '/assets/css/screen.css'
        resource url: '/assets/css/print.css'

        resource url: '/assets/css/screen-ie6.css', attrs: [media:'screen'],  
            wrapper: { s -> "<!--[if lt IE 6]>${s}<![endif]-->" }
    }
}
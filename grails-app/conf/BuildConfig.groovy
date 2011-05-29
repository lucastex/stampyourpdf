grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
grails.project.dependency.resolution = {

    inherits("global") {
    }

    log "warn"

    repositories {
        grailsPlugins()
        grailsHome()
        grailsCentral()
        mavenCentral()
    }

    dependencies {
        compile 'com.lowagie:itext:2.0.7'
    }

	plugins {
		compile ':jquery:1.6.1.1'
		compile ':resources:1.0'
		compile ':zipped-resources:1.0'
		compile ':cached-resources:1.0'
		compile ':cache-headers:1.1.5'
	}
}

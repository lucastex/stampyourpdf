import stampyourpdf.MetaclassHelper

class BootStrap {

    def init = { servletContext ->
        new MetaclassHelper()
    }
    def destroy = {
    }
}

package stampyourpdf

class PublicController {

	def stampService

    def index = { }

	def stamp = {
		
		def text = params.text
		def file = request.getFile('file')
		if (file.size > 0 && text) {
			
			def extension = file.extension
			if (extension.equalsIgnoreCase("pdf")) {
				try {
					def newFilename = "stamped-${file.originalFilename.slug()}.${extension}"
					def outputStream = stampService.stamp(file.inputStream, text)
					response.setContentType("application/pdf")
					response.setHeader("Content-disposition", "attachment; filename=${newFilename}")
					outputStream.writeTo(response.outputStream)
				} catch (Exception ex) {
					def errorMessage = "${g.message(code: 'public.stamp.error.generic')}: ${ex.message}"
					flash.error = errorMessage
					flash.errorCode = 'generic'
					redirect action: index
				}
			} else {
				flash.error = g.message(code: 'public.stamp.error.nopdf')
				flash.errorCode = 'notpdf'
				redirect action: index
			}
			
		} else {
			flash.error = g.message(code: 'public.stamp.error.noparam')
			flash.errorCode = 'withoutparam'
			redirect action: index
		}
	}
}

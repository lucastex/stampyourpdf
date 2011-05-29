package stampyourpdf

class PublicController {

	def stampService

    def index = { }

	def upload = {
		
		def file = request.getFile('file')
		if (file) {
			
			def newFilename = "stamped-${file.originalFilename}"
			def outputStream = stampService.stamp(file.inputStream, params.text)
			response.setContentType("application/pdf")
			response.setHeader("Content-disposition", "attachment; filename=${newFilename}")
			response.outputStream << outputStream
		}
	}
}

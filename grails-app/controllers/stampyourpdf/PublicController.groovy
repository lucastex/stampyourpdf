package stampyourpdf

class PublicController {

	def stampService

    def index = { }

	def upload = {
		
		def file = request.getFile('file')
		if (file) {
			
			def extension = file.extension
			def newFilename = "stamped-${file.originalFilename.slug()}.${extension}"
			def outputStream = stampService.stamp(file.inputStream, params.text)
			response.setContentType("application/pdf")
			response.setHeader("Content-disposition", "attachment; filename=${newFilename}")
			outputStream.writeTo(response.outputStream)
		}
	}
}

package stampyourpdf

class PublicController {

	def stampService

    def index = { }

	def upload = {
		
		def text = params.text
		def file = request.getFile('file')
		if (file && text) {
			
			def extension = file.extension
			def newFilename = "stamped-${file.originalFilename.slug()}.${extension}"
			def outputStream = stampService.stamp(file.inputStream, text)
			response.setContentType("application/pdf")
			response.setHeader("Content-disposition", "attachment; filename=${newFilename}")
			outputStream.writeTo(response.outputStream)
		}
	}
}

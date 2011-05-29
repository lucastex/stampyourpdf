package stampyourpdf

import com.lowagie.text.Phrase
import com.lowagie.text.Element
import com.lowagie.text.ColumnText

import com.lowagie.text.pdf.BaseFont
import com.lowagie.text.pdf.PdfReader
import com.lowagie.text.pdf.PdfStamper
import com.lowagie.text.pdf.ColumnText
import com.lowagie.text.pdf.PdfContentByte

class StampService {

    static transactional = false

    public OutputStream stamp(FileInputStream inputStream, String text) {

		def reader = new PdfReader(inputStream)
		int totalPages  = reader.getNumberOfPages()

		//def outputStream = new ByteArrayOutputStream()
		def outputStream = new FileOutputStream("/tmp/xpto.pdf")
		def stamp = new PdfStamper(reader, outputStream)

		totalPages.times { idx ->

			def pageNumber = idx + 1
			def pageSize = reader.getPageSize(pageNumber) 

			ColumnText.showTextAligned(stamp.getOverContent(pageNumber), 
			                           Element.ALIGN_CENTER, 
			                           //new Phrase("Page " + pageNumber + " of " + totalPages), 
			                           new Phrase(text),
			                           (pageSize.width / 2) as float, 
									   60,
									   0)
		}

		stamp.close()
		
		return outputStream
    }
}

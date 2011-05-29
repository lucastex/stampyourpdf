package stampyourpdf

import java.text.Normalizer
import org.springframework.web.multipart.commons.CommonsMultipartFile

class MetaclassHelper {
	
	public MetaclassHelper() {
		
		//String - slug
		String.metaClass.slug { ->
			
			def s = delegate.toLowerCase()
			
			s = Normalizer.normalize(s, Normalizer.Form.NFD).replaceAll("[^\\p{ASCII}]", "").trim()
			s = s.replaceAll(/[^a-z0-9\s-]/, "").replaceAll(/\s+/, " ").trim()

			if (s.length() > 45) {
				s = s.substring(0, 45).trim()
			}

			s.replaceAll(/\s/, "-")
		}
		
		//String - crypt()
		String.metaClass.crypt = { ->
			return org.apache.commons.codec.digest.DigestUtils.md5Hex(delegate)
		}
		
		//String - isNumeric
		String.metaClass.isNumeric = { ->
			return org.apache.commons.lang.StringUtils.isNumeric(delegate)	
		}

		//String - isBlank
		String.metaClass.isBlank = { ->
			return org.apache.commons.lang.StringUtils.isBlank(delegate)	
		}
		
		//File - getExtension()
		File.metaClass.getExtension = {
			
			def extension = ""
			def matcher = (delegate.name =~ /(\.[^\.]*)$/)
			if (matcher.size() > 0)
				extension = ((matcher[0][0].size()>0) ? matcher[0][0].substring(1).trim().toLowerCase() : "")
			return extension
			
		}

		//CommonsMultipartFile - getExtension()
		CommonsMultipartFile.metaClass.getExtension = {
			
			def extension = ""
			def matcher = (delegate.originalFilename =~ /(\.[^\.]*)$/)
			if (matcher.size() > 0)
				extension = ((matcher[0][0].size()>0) ? matcher[0][0].substring(1).trim().toLowerCase() : "")
			return extension
			
		}
	}
}
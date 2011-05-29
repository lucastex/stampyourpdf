class UrlMappings {

	static mappings = {
		
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"   (controller: "public")
		"500" (view:'/error')
	}
}

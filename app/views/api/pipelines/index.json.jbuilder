json.Pipelines @Pipelines do |Pipeline|
	json.id    			Pipeline.id
	json.name 			Pipeline.name
	json.created_at 		Pipeline.created_at
	json.updated_at 		Pipeline.updated_at
end
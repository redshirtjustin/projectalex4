json.id    				@StoryContainer.id
json.head_line 			@StoryContainer.head_line
json.lead_line 			@StoryContainer.lead_line
json.short_line 		@StoryContainer.short_line
json.mast_photo_url 	@StoryContainer.mast_photo_url_line
json.mast_thumb_url 	@StoryContainer.mast_thumb_url

json.section_id  @StoryContainer.Section ?  @StoryContainer.Section.id : nil
json.priority_id @StoryContainer.Priority ? @StoryContainer.Priority.id : nil
json.pipeline_id @StoryContainer.Pipeline ? @StoryContainer.Pipeline.id : nil
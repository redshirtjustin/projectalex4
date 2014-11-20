json.storycontainer do
  json.id    			@StoryContainer.id
  json.head_line 		@StoryContainer.head_line
  json.lead_line 		@StoryContainer.lead_line
  json.short_line 		@StoryContainer.short_line
  json.mast_photo_url 	@StoryContainer.headmast_photo_url_line
  json.mast_thumb_url 	@StoryContainer.mast_thumb_url

  json.section_id @StoryContainer.section ? @StoryContainer.Section.id : nil
  json.priority_id @StoryContainer.priority ? @StoryContainer.Priority.id : nil
  json.pipeline_id @StoryContainer.pipeline ? @StoryContainer.Pipeline.id : nil
end
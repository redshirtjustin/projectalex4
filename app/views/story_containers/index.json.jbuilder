json.array!(@story_containers) do |story_container|
  json.extract! story_container, :id
  json.url story_container_url(story_container, format: :json)
end

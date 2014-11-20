class StoryContainerController < ApplicationController
  def index
  	@storycontainers = StoryContainers.all
  end
end

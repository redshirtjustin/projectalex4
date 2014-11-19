class StoryContainer < ActiveRecord::Base
  belongs_to :Section
  belongs_to :Priority
  belongs_to :Pipeline
end

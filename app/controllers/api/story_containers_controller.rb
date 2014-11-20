module Api
  class StoryContainersController < Api::BaseController

    private

      def story_container_params
        params.require(:story_container).permit(:head_line, :lead_line, :short_line, :mast_photo_url, :mast_thumb_url)
      end

      def query_params
        # this assumes that an StoryContainer belongs to a Section, Priority,
        # and Pipelin and has an corresponding :xxx_id
        # allowing us to filter by this
        params.permit(:section, :priority, :pipeline)
      end

  end
end
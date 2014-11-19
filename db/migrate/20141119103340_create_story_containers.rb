class CreateStoryContainers < ActiveRecord::Migration
  def change
    create_table :story_containers do |t|
      t.string :head_line
      t.string :lead_line
      t.string :short_line
      t.string :mast_photo_url
      t.string :mast_thumb_url
      t.references :section, index: true, unique: true
      t.references :priority, index: true, unique: true
      t.references :pipeline, index: true, unique: true

      t.foreign_key :sections
      t.foreign_key :priority
      t.foreign_key :pipeline

      t.timestamps
    end
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Seed the priority_levels table
Priority.delete_all
pl1 = Priority.create!(name: 'No Priority')
pl2 = Priority.create!(name: 'Breaking News')
pl3 = Priority.create!(name: 'Happening')
pl4 = Priority.create!(name: 'Developing')

# Seed the sections table
Section.delete_all
sec1 = Section.create!(name: 'Business & Economics')
sec2 = Section.create!(name: 'Government & Politics')
sec3 = Section.create!(name: 'Sports')
sec4 = Section.create!(name: 'Science')
sec5 = Section.create!(name: 'Environment')
sec6 = Section.create!(name: 'Arts & Entertainment')

# Seed the pipeline table
pip1 = Pipeline.create!(name: 'Initialized')
pip2 = Pipeline.create!(name: 'Development')
pip3 = Pipeline.create!(name: 'Waiting Approval')
pip4 = Pipeline.create!(name: 'Completed')
pip5 = Pipeline.create!(name: 'Active')
pip6 = Pipeline.create!(name: 'Inactive')

# Seed story_containers table through section, and add prioritylevel_id
StoryContainer.delete_all
sc1 = sec1.StoryContainers.create!(lead_line: 'After Super-Typhoon Yolanda, the strongest typhoon in recorded history, laid waste to Tacloban City and several other areas in the Philippines, a proposed 400 Ha. township was to be constructed to accommodate the 400 families still living in tents and the hundreds others still living in temporary housing.', short_line: '400 Ha. Township to Rise Out of Yolanda Destruction, One-year After, 2.75% Complete', head_line: '400 Ha. Township to Rise Out of Yolanda Destruction, One-year After, 2.75% Complete',mast_photo_url: 'image1.jpg', mast_thumb_url: 'image1_thb.jpg', priority_id: pl1.id, pipeline_id: pip4.id)
sc2 = sec2.StoryContainers.create!(lead_line: 'The Sin Tax Reform Act, passed in late 2012, designed to curb smoking and drinking while raising money to bolster government health services boasted a 45% greater revenue collections than expected in 2014 alone.', short_line: '2012 ‘Sin Tax’ Reform Shows Greater Revenues Than Expected', head_line: '2012 Sin Tax Reform Shows Greater Revenues Than Expected', mast_photo_url: 'image2.jpg', mast_thumb_url: 'image2_thb.jpg', priority_id: pl1.id, pipeline_id: pip4.id)
step "there is a crab" do
  @crab = Crab.new
end

step "there is a sacculini carcini" do
  @sacculini_carcini = SacculiniCarcini.new
end

step "the sacculini carcini attaches to the crab's attennae" do
  @sacculini_carcini.attach(@crab)
end

step "the sacculini carcini sheds its abdomen and thorax" do
  @sacculini_carcini.shed
end

step "the sacculini carcini migrates to the mid-gut of the crab" do
  @sacculini_carcini.migrate_to_gut
end

step "several weeks pass" do
  @sacculini_carcini.tick(3 * SacculiniCarcini::WEEK_IN_SECONDS) # 3 weeks
end

step "the crab's abdomen should have an externa" do
  @crab.externa?
end

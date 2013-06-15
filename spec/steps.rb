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

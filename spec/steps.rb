step "there is a crab" do
  @crab = Crab.new
end

step "there is a sacculina carcini" do
  @sacculina_carcini = SacculinaCarcini.new
end

step "the sacculina carcini attaches to the crab" do
  debugger
  @sacculina_carcini.attach(@crab)
  @crab.payload[:infection] = @sacculina_carcini
end

step "the sacculina carcini sheds its abdomen and thorax" do
  @sacculina_carcini.shed
end

step "the sacculina carcini migrates to the mid-gut of the crab" do
  @sacculina_carcini.migrate_to_gut
end

step "several weeks pass" do
  @sacculina_carcini.tick(3 * SacculinaCarcini::WEEK_IN_SECONDS) # 3 weeks
end

step "the crab's abdomen should have an externa" do
  expect(@crab.externa?).to be_true
  expect(@crab.payload['infection']).to eq(@sacculina_carcini)
end

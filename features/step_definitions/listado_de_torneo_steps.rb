Given(/^existe un "(.*?)"$/) do |nombreTorneo|
  @torneo = Torneo.new
  @torneo.name = nombreTorneo
  @torneo.save
end

Then(/^la lista de torneos me muestra "(.*?)"$/) do |nombreTorneo|
  @torneo = Torneo.new
  @torneo.name = nombreTorneo

  @torneos = Torneo.all  
  @torneos.include?(@torneo).should == true
end

Then(/^la lista de torneos esta vacia$/) do
  @torneos = Torneo.all
  @torneos.count.should == 0
end


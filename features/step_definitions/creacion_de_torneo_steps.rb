Given(/^no existen torneos$/) do
  Torneo.all.destroy
  Torneo.count.should == 0
end

When(/^creo un torneo llamado "(.*?)"$/) do |nombreTorneo|
  @torneo = Torneo.new
  @torneo.name = nombreTorneo
  @torneo.save
end

Then(/^se crea exitosamente el torneo "(.*?)"$/) do |nombreTorneo|
  Torneo.get!(nombreTorneo)
end

Then(/^me indica error porque ya existe un torneo "(.*?)"$/) do |nombreTorneo|
  Torneo.get!(nombreTorneo)
end


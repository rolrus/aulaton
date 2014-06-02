Given(/^no existen equipos$/) do
  Equipo.all.destroy
end

When(/^creo un equipo llamado "(.*?)"$/) do |nombreEquipo|
  @equipo = Equipo.new
  @equipo.name = nombreEquipo
  @equipo.save
end

Then(/^se crea exitosamente el equipo "(.*?)"$/) do |nombreEquipo|
  Equipo.get!(nombreEquipo)
end

Then(/^me indica error porque ya existe un equipo "(.*?)"$/) do |nombreEquipo|
  Equipo.get!(nombreEquipo)
end



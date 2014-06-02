Given(/^hay un "(.*?)"$/) do |nombreEquipo|
  @equipo = Equipo.new
  @equipo.name = nombreEquipo
  @equipo.save
  end

Then(/^la lista de equipos me muestra "(.*?)"$/) do |nombreEquipo|
  @equipo = Equipo.new
  @equipo.name = nombreEquipo
  
  @equipos = Equipo.all
  @equipos.include?(@equipo).should == true
end

Then(/^la lista de equipos esta vacia$/) do
  @equipos = Equipo.all
  @equipos.count.should == 0
end

Given(/^que tengo un equipo "(.*?)"$/) do |nombre_equipo|
  Equipo.all.destroy
  visit '/equipos/new'
  fill_in('equipo[name]', :with => nombre_equipo)
  click_button('Crear')
end

And(/^otro equipo "(.*?)"$/) do |nombre_equipo|
  visit '/equipos/new'
  fill_in('equipo[name]', :with => nombre_equipo)
  click_button('Crear')
end

Then(/^la lista de equipos me muestra "(.*?)"$/) do |nombre_equipo|
  visit '/'
  page.should have_content(nombre_equipo)
end

Then(/^la lista de equipos esta vacia$/) do
#TODO check condition
  @equipos = Equipo.all
  @equipos.count.should == 0
end

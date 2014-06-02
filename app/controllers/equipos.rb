Macaya::App.controllers :equipos do

	get :all do
	    @equipos = Equipo.all
	    render 'equipos/equipo_manager'
	end
end

Macaya::App.controllers :equipos do

	get :all do
	    @equipos = Equipo.all
	    render 'equipos/equipo_manager'
	end

	get :new do
	    render 'equipos/new'
	end
end

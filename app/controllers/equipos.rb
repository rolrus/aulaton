Macaya::App.controllers :equipos do

	get :all do
	    @equipos = Equipo.all
	    render 'equipos/equipo_manager'
	end

	get :new do
		@equipo = Equipo.new
	    render 'equipos/new'
	end

	post :create do
		@equipo = Equipo.new(params[:equipo])
		if @equipo.save
		  flash[:success] = 'El equipo fue creado.'
		  redirect '/'
		else
		  flash.now[:error] = 'No se pudo crear el equipo.'
		  render 'equipos/new'
        	end
	end
end

Macaya::App.controllers :experiencias do

	# get :all do
	#     @equipos = Equipo.all
	#     render 'equipos/equipo_manager'
	# end

	get :nueva do
		@experiencia = Experiencia.new
	    render 'experiencias/nueva'
	end

	post :create do
		@experiencia = Experiencia.new(params[:experiencia])
		@experiencia.save
		  #flash[:success] = 'EL EQUIPO FUE CREADO'
		  redirect '/'
		# else
		#   flash.now[:error] = 'NO SE PUDO CREAR EL EQUIPO'
		#   render 'equipos/new'
  #       	end
	end
end

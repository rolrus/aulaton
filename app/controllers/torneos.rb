Macaya::App.controllers :torneos do

	get :all do
	    @torneos = Torneo.all
	    render 'torneos/torneo_manager'
	end

	get :new do
	    @torneo = Torneo.new
	    render 'torneos/new'
	end

	post :create do
		@torneo = Torneo.new(params[:torneo])
		if @torneo.save
		  flash[:success] = 'El torneo fue creado.'
		  redirect '/'
		else
		  flash.now[:error] = 'No se pudo crear el torneo.'
		  render 'torneos/create'
        	end
	end

end

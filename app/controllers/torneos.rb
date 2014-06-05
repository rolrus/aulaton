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
		  flash[:success] = 'EL TORNEO FUE CREADO'
		  redirect '/'
		else
		  flash.now[:error] = 'NO SE PUDO CREAR EL TORNEO'
		  render 'torneos/new'
        	end
	end

end

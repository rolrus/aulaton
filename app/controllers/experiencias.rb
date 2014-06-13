Macaya::App.controllers :experiencias do

	get :nueva do
		@experiencia = Experiencia.new
	    render 'experiencias/nueva'
	end

	post :create do
		@experiencia = Experiencia.new(params[:experiencia])
		if @experiencia.save
			flash[:success] = 'Gracias por contarnos tu experiencia'
			redirect '/'
		else
			flash.now[:error] = 'Faltan datos para completar tu experiencia'
			render 'experiencias/nueva'
   	end
	end
	
end

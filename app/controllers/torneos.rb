Macaya::App.controllers :torneos do

	get :all do
	    @torneos = Torneo.all
	    render 'torneos/torneo_manager'
	end

end

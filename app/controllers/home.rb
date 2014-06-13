Aulaton::App.controllers :home do
  
  get :index, :map => '/' do
    @experiencias = Experiencia.all(:limit => 10, :order => [:id .desc])
    render 'home/index'
  end
  
end

migration 3, :create_experiencia do
  up do
    create_table :experiencia do
      column :id, Integer, :serial => true
      column :nivel, DataMapper::Property::String, :length => 255
      column :area, DataMapper::Property::String, :length => 255
      column :tema, DataMapper::Property::String, :length => 255
      column :objetivo, DataMapper::Property::String, :length => 255
      column :dinamica, DataMapper::Property::String, :length => 255
      column :duracion, DataMapper::Property::Integer
      column :recomendacion, DataMapper::Property::String, :length => 255
    end
  end

  down do
    drop_table :experiencia
  end
end

 class Experiencia
 include DataMapper::Resource

 # property <name>, <type>
 property :id, Serial
 property :nivel, String
 property :area, String
 property :tema, String
 property :objetivo, String
 property :dinamica, String
 property :duracion, Integer
 property :recomendacion, String
end

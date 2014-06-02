class Equipo
  include DataMapper::Resource

  # property <name>, <type>
  # property :id, Serial
  property :name, String, :key => true, :unique => true
  validates_presence_of :name
end

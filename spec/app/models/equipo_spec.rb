require 'spec_helper'

describe Equipo do

	describe 'Model' do

		subject {@equipo = Equipo.new}

		it {should respond_to( :name)}

	end
	
end

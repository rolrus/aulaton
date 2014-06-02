require 'spec_helper'

describe Torneo do

	describe 'Model' do

		subject {@torneo = Torneo.new}

		it { should respond_to( :name)}

	end


end

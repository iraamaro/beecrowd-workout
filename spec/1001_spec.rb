require 'spec_helper'
require '1001.rb'

describe C1001 do
  before(:each) do
    @calc = C1001.new()
  end
  describe 'Uso do método sum()' do
    context 'quando chamo o método sum() passando 10 + 9' do
      it 'deve retornar 19' do
        expect { @calc.sum(10, 9) }.to output("X = 19\n").to_stdout
      end
    end
    context 'quando chamo o método sum() passando -10 + 4' do
      it 'deve retornar -6' do
        expect { @calc.sum(-10, 4) }.to output("X = -6\n").to_stdout
      end
    end
    context 'quando chamo o método sum() passando 15 - 7' do
      it 'deve retornar 8' do
        expect { @calc.sum(15, -7) }.to output("X = 8\n").to_stdout
      end
    end
  end
end

require 'spec_helper'
require '1000.rb'

describe C1000 do
  before(:each) do
    @hello = C1000.new()
  end
  describe 'Uso do método hello()' do
    context 'quando chamo o método hello' do
      it 'deve retornar a mensagem' + ' Hello World!' do
        expect { @hello.hello() }.to output("Hello World!\n").to_stdout
      end
    end
  end
end

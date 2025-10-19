require 'spec_helper'
require '1011.rb'

describe C1011 do
    before(:each) do
        @volume = nil
    end
    describe 'Uso do método .sphere_volume' do
        context 'calcula o volume da esfera quando o raio == 3' do
          it 'deve retornar VOLUME = 113.097' do
            @volume = C1011.new(3)
            expect(@volume.sphere_volume).to eq("113.097")
          end
        end
        context 'calcula o volume da esfera quando o raio == 15' do
          it 'deve retornar VOLUME = 14137.155' do
            @volume = C1011.new(15)
            expect(@volume.sphere_volume).to eq("14137.155")
          end
        end
        context 'calcula o volume da esfera quando o raio == 1523' do
          it 'deve retornar VOLUME = 14797486501.627' do
            @volume = C1011.new(1523)
            expect(@volume.sphere_volume).to eq("14797486501.627")
          end
        end
    end
end

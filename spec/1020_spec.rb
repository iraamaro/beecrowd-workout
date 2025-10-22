require '1020.rb'
require 'spec_helper'

describe C1020 do
  before(:each) do
    @age = nil
  end
  describe 'Uso do método .age_conversion' do
    context 'com entrada válida' do
      it 'converte 400 dias para 1 ano(s)\n1 mes(es)\n5 dia(s)' do
        @age = C1020.new("400")
        expect(@age.age_conversion).to eq("1 ano(s)\n1 mes(es)\n5 dia(s)")
      end

      it 'converte 800 dias para 2 ano(s)\n2 mes(es)\n10 dia(s)' do
        @age = C1020.new("800")
        expect(@age.age_conversion).to eq("2 ano(s)\n2 mes(es)\n10 dia(s)")
      end

      it 'converte 30 dias para 0 ano(s)\n1 mes(es)\n0 dia(s)' do
        @age = C1020.new("30")
        expect(@age.age_conversion).to eq("0 ano(s)\n1 mes(es)\n0 dia(s)")
      end
    end

    context 'com entrada inválida' do
      it 'levanta ArgumentError para string' do
        expect { C1020.new("abc") }.to raise_error(
          ArgumentError, "Digite apenas números inteiros."
        )
      end
      it 'levanta ArgumentError para float' do
        expect { C1020.new(37.9) }.to raise_error(
          ArgumentError, "Digite apenas números inteiros."
        )
      end
      it 'levanta ArgumentError para vazio' do
        expect { C1020.new("") }.to raise_error(
          ArgumentError, "Digite apenas números inteiros."
        )
      end
    end
  end
end

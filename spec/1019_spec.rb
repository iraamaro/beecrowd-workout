require '1019.rb'
require 'spec_helper'

describe C1019 do
  describe '#time_conversion' do
    context 'com entrada válida' do
      it 'converte 556 segundos para 0:9:16' do
        clock = C1019.new("556")
        expect(clock.time_conversion).to eq("0:9:16")
      end

      it 'converte 3600 segundos para 1:0:0' do
        clock = C1019.new("3600")
        expect(clock.time_conversion).to eq("1:0:0")
      end

      it 'converte 1 segundo para 0:0:1' do
        clock = C1019.new("1")
        expect(clock.time_conversion).to eq("0:0:1")
      end
    end

    context 'com entrada inválida' do
      it 'levanta ArgumentError para string' do
        expect { C1019.new("abc") }.to raise_error(ArgumentError, "Digite apenas números inteiros.")
      end

      it 'levanta ArgumentError para float' do
        expect { C1019.new("12.5") }.to raise_error(ArgumentError, "Digite apenas números inteiros.")
      end

      it 'levanta ArgumentError para vazio' do
        expect { C1019.new("") }.to raise_error(ArgumentError, "Digite apenas números inteiros.")
      end
    end
  end
end

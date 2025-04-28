require 'spec_helper'
require '1001_alt.rb'

describe Calculator do
  before(:each) do
    @calc = Calculator.new
  end
  describe 'Uso do método .call' do
    context 'quando chamo .call com 10 + 9' do
      it 'deve retornar X = 19' do
        allow_any_instance_of(Object).to receive(:gets).and_return("10", "9")
        expect { described_class.call }.to output(
          "Digite o primeiro número: Digite o segundo número: X = 19\n"
        ).to_stdout
      end
    end
    context 'quando chamo .call com -10 + 4' do
      it 'deve retornar X = -6' do
        allow_any_instance_of(Object).to receive(:gets).and_return("-10", "4")
        expect { described_class.call }.to output(
          "Digite o primeiro número: Digite o segundo número: X = -6\n"
        ).to_stdout
      end
    end
    context 'quando chamo .call com 15 + -7' do
      it 'deve retornar X = 8' do
        allow_any_instance_of(Object).to receive(:gets).and_return("15", "-7")
        expect { described_class.call }.to output(
          "Digite o primeiro número: Digite o segundo número: X = 8\n"
        ).to_stdout
      end
    end
    context 'quando passo um não inteiro ou float e depois 10 + 9' do
      it 'pede novamente se o usuário digitar valor inválido deve retornar X = 19' do
        allow_any_instance_of(Object).to receive(:gets).and_return("abc", "10", "xyz", "9")
        expect { described_class.call }.to output(
          "Digite o primeiro número: Entrada inválida. Por favor, digite um número válido.\n" \
          "Digite o primeiro número: Digite o segundo número: "+
          "Entrada inválida. Por favor, digite um número válido.\n" \
          "Digite o segundo número: X = 19\n"
        ).to_stdout
      end
    end
    context 'quando passo um não inteiro ou float e depois -10 + 4' do
      it 'pede novamente se o usuário digitar valor inválido deve retornar X = -6' do
        allow_any_instance_of(Object).to receive(:gets).and_return("abc", "-10", "xyz", "4")
        expect { described_class.call }.to output(
          "Digite o primeiro número: Entrada inválida. Por favor, digite um número válido.\n" \
          "Digite o primeiro número: Digite o segundo número: "+
          "Entrada inválida. Por favor, digite um número válido.\n" \
          "Digite o segundo número: X = -6\n"
        ).to_stdout
      end
    end
    context 'quando passo um não inteiro ou float e depois 15 + -7' do
      it 'pede novamente se o usuário digitar valor inválido deve retornar X = 8' do
        allow_any_instance_of(Object).to receive(:gets).and_return("abc", "15", "xyz", "-7")
        expect { described_class.call }.to output(
          "Digite o primeiro número: Entrada inválida. Por favor, digite um número válido.\n" \
          "Digite o primeiro número: Digite o segundo número: "+
          "Entrada inválida. Por favor, digite um número válido.\n" \
          "Digite o segundo número: X = 8\n"
        ).to_stdout
      end
    end
  end
end

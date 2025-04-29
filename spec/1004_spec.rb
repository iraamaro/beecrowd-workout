require 'spec_helper'
require '1004.rb'

describe Calc do
  before(:each) do
    @calc = Calc.new
  end
  describe 'Uso do método .call' do
    context 'quando chamo .call com 3 * 9' do
      it 'deve retornar PROD = 27' do
        allow_any_instance_of(Object).to receive(:gets).and_return("3", "9")
        expect { described_class.call }.to output(
          "Digite o primeiro número: Digite o segundo número: PROD = 27\n"
        ).to_stdout
      end
    end
    context 'quando chamo .call com -30 * 10' do
      it 'deve retornar PROD = -300' do
        allow_any_instance_of(Object).to receive(:gets).and_return("-30", "10")
        expect { described_class.call }.to output(
          "Digite o primeiro número: Digite o segundo número: PROD = -300\n"
        ).to_stdout
      end
    end
    context 'quando chamo .call com 0 * 9' do
      it 'deve retornar PROD = 0' do
        allow_any_instance_of(Object).to receive(:gets).and_return("0", "9")
        expect { described_class.call }.to output(
          "Digite o primeiro número: Digite o segundo número: PROD = 0\n"
        ).to_stdout
      end
    end
    context 'quando passo um não inteiro ou float e depois 3 * 9' do
      it 'pede novamente se o usuário digitar valor inválido deve retornar PROD = 27' do
        allow_any_instance_of(Object).to receive(:gets).and_return("abc", "3", "xyz", "9")
        expect { described_class.call }.to output(
          "Digite o primeiro número: Entrada inválida. Por favor, digite um número válido.\n" \
          "Digite o primeiro número: Digite o segundo número: "+
          "Entrada inválida. Por favor, digite um número válido.\n" \
          "Digite o segundo número: PROD = 27\n"
        ).to_stdout
      end
    end
    context 'quando passo um não inteiro ou float e depois -30 * 10' do
      it 'pede novamente se o usuário digitar valor inválido deve retornar PROD = -300' do
        allow_any_instance_of(Object).to receive(:gets).and_return("abc", "-30", "xyz", "10")
        expect { described_class.call }.to output(
          "Digite o primeiro número: Entrada inválida. Por favor, digite um número válido.\n" \
          "Digite o primeiro número: Digite o segundo número: "+
          "Entrada inválida. Por favor, digite um número válido.\n" \
          "Digite o segundo número: PROD = -300\n"
        ).to_stdout
      end
    end
    context 'quando passo um não inteiro ou float e depois 0 * 9' do
      it 'pede novamente se o usuário digitar valor inválido deve retornar PROD = 0' do
        allow_any_instance_of(Object).to receive(:gets).and_return("abc", "0", "xyz", "9")
        expect { described_class.call }.to output(
          "Digite o primeiro número: Entrada inválida. Por favor, digite um número válido.\n" \
          "Digite o primeiro número: Digite o segundo número: "+
          "Entrada inválida. Por favor, digite um número válido.\n" \
          "Digite o segundo número: PROD = 0\n"
        ).to_stdout
      end
    end
  end
end

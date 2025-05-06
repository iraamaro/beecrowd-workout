require 'spec_helper'
require '1003.rb'

describe C1003 do
  before(:each) do
    @calc = C1003.new
  end
  describe 'Uso do método .call' do
    context 'quando chamo .call com 30 + 10' do
      it 'deve retornar SOMA = 40' do
        allow_any_instance_of(Object).to receive(:gets).and_return("30", "10")
        expect { described_class.call }.to output(
          "Digite o primeiro número: Digite o segundo número: SOMA = 40\n"
        ).to_stdout
      end
    end
    context 'quando chamo .call com -30 + 10' do
      it 'deve retornar SOMA = -20' do
        allow_any_instance_of(Object).to receive(:gets).and_return("-30", "10")
        expect { described_class.call }.to output(
          "Digite o primeiro número: Digite o segundo número: SOMA = -20\n"
        ).to_stdout
      end
    end
    context 'quando chamo .call com 0 + 0' do
      it 'deve retornar SOMA = 0' do
        allow_any_instance_of(Object).to receive(:gets).and_return("0", "0")
        expect { described_class.call }.to output(
          "Digite o primeiro número: Digite o segundo número: SOMA = 0\n"
        ).to_stdout
      end
    end
    context 'quando passo um não inteiro ou float e depois 30 + 10' do
      it 'pede novamente se o usuário digitar valor inválido deve retornar SOMA = 40' do
        allow_any_instance_of(Object).to receive(:gets).and_return("abc", "30", "xyz", "10")
        expect { described_class.call }.to output(
          "Digite o primeiro número: Entrada inválida. Por favor, digite um número válido.\n" \
          "Digite o primeiro número: Digite o segundo número: "+
          "Entrada inválida. Por favor, digite um número válido.\n" \
          "Digite o segundo número: SOMA = 40\n"
        ).to_stdout
      end
    end
    context 'quando passo um não inteiro ou float e depois -30 + 10' do
      it 'pede novamente se o usuário digitar valor inválido deve retornar SOMA = -20' do
        allow_any_instance_of(Object).to receive(:gets).and_return("abc", "-30", "xyz", "10")
        expect { described_class.call }.to output(
          "Digite o primeiro número: Entrada inválida. Por favor, digite um número válido.\n" \
          "Digite o primeiro número: Digite o segundo número: "+
          "Entrada inválida. Por favor, digite um número válido.\n" \
          "Digite o segundo número: SOMA = -20\n"
        ).to_stdout
      end
    end
    context 'quando passo um não inteiro ou float e depois 0 + 0' do
      it 'pede novamente se o usuário digitar valor inválido deve retornar SOMA = 0' do
        allow_any_instance_of(Object).to receive(:gets).and_return("abc", "0", "xyz", "0")
        expect { described_class.call }.to output(
          "Digite o primeiro número: Entrada inválida. Por favor, digite um número válido.\n" \
          "Digite o primeiro número: Digite o segundo número: "+
          "Entrada inválida. Por favor, digite um número válido.\n" \
          "Digite o segundo número: SOMA = 0\n"
        ).to_stdout
      end
    end
  end
end

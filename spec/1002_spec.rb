require 'spec_helper'
require '1002.rb'

describe C1002 do
  before(:each) do
    @area = C1002.new
  end
  describe 'Uso do método .call' do
    context 'quando chamo .call com raio 2' do
      it 'deve retornar A=12.5664' do
        allow_any_instance_of(Object).to receive(:gets).and_return("2")
        expect { described_class.call }.to output(
          "Digite o raio da circunferência: A=12.5664\n"
        ).to_stdout
      end
    end
    context 'quando chamo .call com raio 100.64' do
      it 'deve retornar A=31819.3103' do
        allow_any_instance_of(Object).to receive(:gets).and_return("100.64")
        expect { described_class.call }.to output(
          "Digite o raio da circunferência: A=31819.3103\n"
        ).to_stdout
      end
    end
    context 'quando chamo .call com raio 150' do
      it 'deve retornar A=70685.7750' do
        allow_any_instance_of(Object).to receive(:gets).and_return("150")
        expect { described_class.call }.to output(
          "Digite o raio da circunferência: A=70685.7750\n"
        ).to_stdout
      end
    end
    context 'quando chamo .call com raio negativo e depois correto com 2' do
      it 'pede novamente se o usuário digitar número negativo' do
        allow_any_instance_of(Object).to receive(:gets).and_return("-2", "2")
        expect { described_class.call }.to output(
          "Digite o raio da circunferência: Entrada inválida. " +
          "Por favor, digite um número positivo.\n" \
          "Digite o raio da circunferência: A=12.5664\n"
        ).to_stdout
      end
    end
    context 'quando chamo .call com caractére inválido e depois correto com 2' do
      it 'pede novamente se o usuário digitar um caractére inválido' do
        allow_any_instance_of(Object).to receive(:gets).and_return("xxx", "2")
        expect { described_class.call }.to output(
          "Digite o raio da circunferência: Entrada inválida. " +
          "Por favor, digite um número positivo.\n" \
          "Digite o raio da circunferência: A=12.5664\n"
        ).to_stdout
      end
    end
    context 'quando chamo .call com raio negativo e depois correto com 100.64' do
      it 'pede novamente se o usuário digitar número negativo' do
        allow_any_instance_of(Object).to receive(:gets).and_return("-100.64", "100.64")
        expect { described_class.call }.to output(
          "Digite o raio da circunferência: Entrada inválida. " +
          "Por favor, digite um número positivo.\n" \
          "Digite o raio da circunferência: A=31819.3103\n"
        ).to_stdout
      end
    end
    context 'quando chamo .call com caractére inválido e depois correto com 100.64' do
      it 'pede novamente se o usuário digitar um caractére inválido' do
        allow_any_instance_of(Object).to receive(:gets).and_return("@_=p[s", "100.64")
        expect { described_class.call }.to output(
          "Digite o raio da circunferência: Entrada inválida. " +
          "Por favor, digite um número positivo.\n" \
          "Digite o raio da circunferência: A=31819.3103\n"
        ).to_stdout
      end
    end
    context 'quando chamo .call com raio negativo e depois correto com 150' do
      it 'pede novamente se o usuário digitar número negativo' do
        allow_any_instance_of(Object).to receive(:gets).and_return("-150", "150")
        expect { described_class.call }.to output(
          "Digite o raio da circunferência: Entrada inválida. " +
          "Por favor, digite um número positivo.\n" \
          "Digite o raio da circunferência: A=70685.7750\n"
        ).to_stdout
      end
    end
    context 'quando chamo .call com caractére inválido e depois correto com 150' do
      it 'pede novamente se o usuário digitar um caractére inválido' do
        allow_any_instance_of(Object).to receive(:gets).and_return("0=-^~><kas", "150")
        expect { described_class.call }.to output(
          "Digite o raio da circunferência: Entrada inválida. " +
          "Por favor, digite um número positivo.\n" \
          "Digite o raio da circunferência: A=70685.7750\n"
        ).to_stdout
      end
    end
  end
end

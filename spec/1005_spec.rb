require 'spec_helper'
require '1005.rb'

describe Grade do
  before(:each) do
    Grade.new
  end
  describe 'Uso do método .call' do
    context 'quando chamo .call com n1 = 5.0 e n2 = 7.1' do
      it 'deve retornar MEDIA = 6.43182' do
        allow_any_instance_of(Object).to receive(:gets).and_return("5.0", "7.1")
        expect { described_class.call }.to output(
          "Digite a primeira nota: Digite a segunda nota: MEDIA = 6.43182\n"
        ).to_stdout
      end
    end
    context 'quando chamo .call com n1 = 0.0 e n2 = 7.1' do
        it 'deve retornar MEDIA = 4.84091' do
          allow_any_instance_of(Object).to receive(:gets).and_return("0", "7.1")
          expect { described_class.call }.to output(
            "Digite a primeira nota: Digite a segunda nota: MEDIA = 4.84091\n"
          ).to_stdout
        end
    end
    context 'quando chamo .call com n1 = 10.0 e n2 = 10.0' do
        it 'deve retornar MEDIA = 10.00000' do
          allow_any_instance_of(Object).to receive(:gets).and_return("10", "10")
          expect { described_class.call }.to output(
            "Digite a primeira nota: Digite a segunda nota: MEDIA = 10.00000\n"
          ).to_stdout
        end
    end
    context 'quando chamo .call com n1 = -5.0 e n2 = -7.1 e depois correto '+
    'com n1 = 5.0 e n2 = 7.1' do
        it 'deve retornar MEDIA = 6.43182' do
          allow_any_instance_of(Object).to receive(:gets).and_return("-5", "5", "-7.1", "7.1")
          expect { described_class.call }.to output(
            "Digite a primeira nota: Entrada inválida. Por favor, digite um número positivo.\n" \
            "Digite a primeira nota: Digite a segunda nota: " +
            "Entrada inválida. Por favor, digite um número positivo.\n" \
            "Digite a segunda nota: MEDIA = 6.43182\n"
          ).to_stdout
        end
    end
    context 'quando chamo .call com n1 = dfe@! e n2 = ASde3 e depois correto '+
    'com n1 = 5.0 e n2 = 7.1' do
        it 'deve retornar MEDIA = 6.43182' do
          allow_any_instance_of(Object).to receive(:gets).and_return("dfe@!", "5", "ASde3", "7.1")
          expect { described_class.call }.to output(
            "Digite a primeira nota: Entrada inválida. Por favor, digite um número positivo.\n" \
            "Digite a primeira nota: Digite a segunda nota: " +
            "Entrada inválida. Por favor, digite um número positivo.\n" \
            "Digite a segunda nota: MEDIA = 6.43182\n"
          ).to_stdout
        end
    end
    context 'quando chamo .call com n1 = - e n2 = -7.1 e depois correto '+
    'com n1 = 0 e n2 = 7.1' do
        it 'deve retornar MEDIA = 4.84091' do
          allow_any_instance_of(Object).to receive(:gets).and_return("-", "0", "-7.1", "7.1")
          expect { described_class.call }.to output(
            "Digite a primeira nota: Entrada inválida. Por favor, digite um número positivo.\n" \
            "Digite a primeira nota: Digite a segunda nota: " +
            "Entrada inválida. Por favor, digite um número positivo.\n" \
            "Digite a segunda nota: MEDIA = 4.84091\n"
          ).to_stdout
        end
    end
    context 'quando chamo .call com n1 = dfe@! e n2 = ASde3 e depois correto '+
    'com n1 = 0 e n2 = 7.1' do
        it 'deve retornar MEDIA = 4.84091' do
          allow_any_instance_of(Object).to receive(:gets).and_return("dfe@!", "0", "ASde3", "7.1")
          expect { described_class.call }.to output(
            "Digite a primeira nota: Entrada inválida. Por favor, digite um número positivo.\n" \
            "Digite a primeira nota: Digite a segunda nota: " +
            "Entrada inválida. Por favor, digite um número positivo.\n" \
            "Digite a segunda nota: MEDIA = 4.84091\n"
          ).to_stdout
        end
    end
    context 'quando chamo .call com n1 = -10 e n2 = -10 e depois correto '+
    'com n1 = 10 e n2 = 10' do
        it 'deve retornar MEDIA = 10.00000' do
          allow_any_instance_of(Object).to receive(:gets).and_return("-10", "10", "-10", "10")
          expect { described_class.call }.to output(
            "Digite a primeira nota: Entrada inválida. Por favor, digite um número positivo.\n" \
            "Digite a primeira nota: Digite a segunda nota: " +
            "Entrada inválida. Por favor, digite um número positivo.\n" \
            "Digite a segunda nota: MEDIA = 10.00000\n"
          ).to_stdout
        end
    end
    context 'quando chamo .call com n1 = dfe@! e n2 = ASde3 e depois correto '+
    'com n1 = 10 e n2 = 10' do
        it 'deve retornar MEDIA = 10.00000' do
          allow_any_instance_of(Object).to receive(:gets).and_return("dfe@!", "10", "ASde3", "10")
          expect { described_class.call }.to output(
            "Digite a primeira nota: Entrada inválida. Por favor, digite um número positivo.\n" \
            "Digite a primeira nota: Digite a segunda nota: " +
            "Entrada inválida. Por favor, digite um número positivo.\n" \
            "Digite a segunda nota: MEDIA = 10.00000\n"
          ).to_stdout
        end
    end
  end
end

require 'spec_helper'
require '1006.rb'

describe C1006 do
    before(:each) do
        C1006.new
    end
    describe 'Uso do método .call' do
        context 'quando chamo .call com a = 5.0, b = 6.0 e c = 7.0' do
            it 'deve retornar MEDIA = 6.3' do
                allow_any_instance_of(Object).to receive(:gets).and_return("5", "6", "7")
                expect { described_class.call }.to output(
                    "Digite a primeira nota: " +
                    "Digite a segunda nota: " +
                    "Digite a terceira nota: MEDIA = 6.3\n"
                ).to_stdout
            end
        end
        context 'quando chamo .call com a = 5.0, b = 10.0 e c = 10.0' do
            it 'deve retornar MEDIA = 9.0' do
                allow_any_instance_of(Object).to receive(:gets).and_return("5.0", "10.0", "10.0")
                expect { described_class.call }.to output(
                    "Digite a primeira nota: " +
                    "Digite a segunda nota: " +
                    "Digite a terceira nota: MEDIA = 9.0\n"
                ).to_stdout
            end
        end
        context 'quando chamo .call com a = 10.0, b = 10.0 e c = 5.0' do
            it 'deve retornar MEDIA = 7.5' do
                allow_any_instance_of(Object).to receive(:gets).and_return("10", "10", "5")
                expect { described_class.call }.to output(
                    "Digite a primeira nota: " +
                    "Digite a segunda nota: " +
                    "Digite a terceira nota: MEDIA = 7.5\n"
                ).to_stdout
            end
        end
        context 'quando chamo .call com a = -5.0, b = -6.0 e c = -7.0 '+
        'e depois correto com a = 5, b = 6 e c = 7' do
            it 'deve retornar MEDIA = 6.3' do
                allow_any_instance_of(Object).to receive(:gets).and_return(
                    "-5", "5", "-6", "6", "-7", "7"
                )
                expect { described_class.call }.to output(
                    "Digite a primeira nota: " +
                    "Entrada inválida. Por favor, digite um número positivo entre 0 e 10.\n" \
                    "Digite a primeira nota: Digite a segunda nota: " +
                    "Entrada inválida. Por favor, digite um número positivo entre 0 e 10.\n" \
                    "Digite a segunda nota: Digite a terceira nota: " +
                    "Entrada inválida. Por favor, digite um número positivo entre 0 e 10.\n" \
                    "Digite a terceira nota: MEDIA = 6.3\n"
                ).to_stdout
            end
        end
        context 'quando chamo .call com a = -1, b = -2.1 e c = 11 '+
        'e depois correto com a = 5, b = 6 e c = 7' do
            it 'deve retornar MEDIA = 6.3' do
                allow_any_instance_of(Object).to receive(:gets).and_return(
                    "-1", "5", "-2.1", "6", "11", "7"
                )
                expect { described_class.call }.to output(
                    "Digite a primeira nota: " +
                    "Entrada inválida. Por favor, digite um número positivo entre 0 e 10.\n" \
                    "Digite a primeira nota: Digite a segunda nota: " +
                    "Entrada inválida. Por favor, digite um número positivo entre 0 e 10.\n" \
                    "Digite a segunda nota: Digite a terceira nota: " +
                    "Entrada inválida. Por favor, digite um número positivo entre 0 e 10.\n" \
                    "Digite a terceira nota: MEDIA = 6.3\n"
                ).to_stdout
            end
        end
        context 'quando chamo .call com a = xxx, b = yyy e c = zzz '+
        'e depois correto com a = 5, b = 6 e c = 7' do
            it 'deve retornar MEDIA = 6.3' do
                allow_any_instance_of(Object).to receive(:gets).and_return(
                    "xxx", "5", "yyy", "6", "zzz", "7"
                )
                expect { described_class.call }.to output(
                    "Digite a primeira nota: " +
                    "Entrada inválida. Por favor, digite um número positivo entre 0 e 10.\n" \
                    "Digite a primeira nota: Digite a segunda nota: " +
                    "Entrada inválida. Por favor, digite um número positivo entre 0 e 10.\n" \
                    "Digite a segunda nota: Digite a terceira nota: " +
                    "Entrada inválida. Por favor, digite um número positivo entre 0 e 10.\n" \
                    "Digite a terceira nota: MEDIA = 6.3\n"
                ).to_stdout
            end
        end
        context 'quando chamo .call com a = -5.0, b = -10.0 e c = -10.0 '+
        'e depois correto com a = 5.0, b = 10.0 e c = 10.0' do
            it 'deve retornar MEDIA = 9.0' do
                allow_any_instance_of(Object).to receive(:gets).and_return(
                    "-5.0", "5.0", "-10.0", "10.0", "-10.0", "10.0"
                )
                expect { described_class.call }.to output(
                    "Digite a primeira nota: " +
                    "Entrada inválida. Por favor, digite um número positivo entre 0 e 10.\n" \
                    "Digite a primeira nota: Digite a segunda nota: " +
                    "Entrada inválida. Por favor, digite um número positivo entre 0 e 10.\n" \
                    "Digite a segunda nota: Digite a terceira nota: " +
                    "Entrada inválida. Por favor, digite um número positivo entre 0 e 10.\n" \
                    "Digite a terceira nota: MEDIA = 9.0\n"
                ).to_stdout
            end
        end
        context 'quando chamo .call com a = -2.2, b = -3.3 e c = 12 '+
        'e depois correto com a = 5.0, b = 10.0 e c = 10.0' do
            it 'deve retornar MEDIA = 9.0' do
                allow_any_instance_of(Object).to receive(:gets).and_return(
                    "-2.2", "5.0", "-3.3", "10.0", "12", "10"
                )
                expect { described_class.call }.to output(
                    "Digite a primeira nota: " +
                    "Entrada inválida. Por favor, digite um número positivo entre 0 e 10.\n" \
                    "Digite a primeira nota: Digite a segunda nota: " +
                    "Entrada inválida. Por favor, digite um número positivo entre 0 e 10.\n" \
                    "Digite a segunda nota: Digite a terceira nota: " +
                    "Entrada inválida. Por favor, digite um número positivo entre 0 e 10.\n" \
                    "Digite a terceira nota: MEDIA = 9.0\n"
                ).to_stdout
            end
        end
        context 'quando chamo .call com a = xxx, b = yyy e c = zzz '+
        'e depois correto com a = 5.0, b = 10.0 e c = 10.0' do
            it 'deve retornar MEDIA = 9.0' do
                allow_any_instance_of(Object).to receive(:gets).and_return(
                    "xxx", "5.0", "yyy", "10.0", "zzz", "10.0"
                )
                expect { described_class.call }.to output(
                    "Digite a primeira nota: " +
                    "Entrada inválida. Por favor, digite um número positivo entre 0 e 10.\n" \
                    "Digite a primeira nota: Digite a segunda nota: " +
                    "Entrada inválida. Por favor, digite um número positivo entre 0 e 10.\n" \
                    "Digite a segunda nota: Digite a terceira nota: " +
                    "Entrada inválida. Por favor, digite um número positivo entre 0 e 10.\n" \
                    "Digite a terceira nota: MEDIA = 9.0\n"
                ).to_stdout
            end
        end
        context 'quando chamo .call com a = -10.0, b = -10.0 e c = -5.0 '+
        'e depois correto com a = 10.0, b = 10.0 e c = 5.0' do
            it 'deve retornar MEDIA = 7.5' do
                allow_any_instance_of(Object).to receive(:gets).and_return(
                    "-10.0", "10.0", "-10.0", "10.0", "-5.0", "5.0"
                )
                expect { described_class.call }.to output(
                    "Digite a primeira nota: " +
                    "Entrada inválida. Por favor, digite um número positivo entre 0 e 10.\n" \
                    "Digite a primeira nota: Digite a segunda nota: " +
                    "Entrada inválida. Por favor, digite um número positivo entre 0 e 10.\n" \
                    "Digite a segunda nota: Digite a terceira nota: " +
                    "Entrada inválida. Por favor, digite um número positivo entre 0 e 10.\n" \
                    "Digite a terceira nota: MEDIA = 7.5\n"
                ).to_stdout
            end
        end
        context 'quando chamo .call com a = -3.3, b = -4.4 e c = 13 '+
        'e depois correto com a = 10.0, b = 10.0 e c = 5.0' do
            it 'deve retornar MEDIA = 7.5' do
                allow_any_instance_of(Object).to receive(:gets).and_return(
                    "-3.3", "10.0", "-4.4", "10.0", "13", "5.0"
                )
                expect { described_class.call }.to output(
                    "Digite a primeira nota: " +
                    "Entrada inválida. Por favor, digite um número positivo entre 0 e 10.\n" \
                    "Digite a primeira nota: Digite a segunda nota: " +
                    "Entrada inválida. Por favor, digite um número positivo entre 0 e 10.\n" \
                    "Digite a segunda nota: Digite a terceira nota: " +
                    "Entrada inválida. Por favor, digite um número positivo entre 0 e 10.\n" \
                    "Digite a terceira nota: MEDIA = 7.5\n"
                ).to_stdout
            end
        end
        context 'quando chamo .call com a = aaa, b = bbb e c = cc '+
        'e depois correto com a = 10.0, b = 10.0 e c = 5.0' do
            it 'deve retornar MEDIA = 7.5' do
                allow_any_instance_of(Object).to receive(:gets).and_return(
                    "aaa", "10", "bbb", "10", "ccc", "5"
                )
                expect { described_class.call }.to output(
                    "Digite a primeira nota: " +
                    "Entrada inválida. Por favor, digite um número positivo entre 0 e 10.\n" \
                    "Digite a primeira nota: Digite a segunda nota: " +
                    "Entrada inválida. Por favor, digite um número positivo entre 0 e 10.\n" \
                    "Digite a segunda nota: Digite a terceira nota: " +
                    "Entrada inválida. Por favor, digite um número positivo entre 0 e 10.\n" \
                    "Digite a terceira nota: MEDIA = 7.5\n"
                ).to_stdout
            end
        end
    end
end
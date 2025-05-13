require 'spec_helper'
require '1007.rb'

describe C1007 do
    before(:each) do
        C1007.new
    end
    describe 'Uso do método .call' do
        context 'quando chamo .call com a = 5, b = 6 , c = 7 e d = 8' do
            it 'deve retornar DIFERENCA = -26' do
                allow_any_instance_of(Object).to receive(:gets).and_return("5", "6", "7", "8")
                expect { described_class.call }.to output(
                    "Digite o número n1: " +
                    "Digite o número n2: " +
                    "Digite o número n3: " +
                    "Digite o número n4: DIFERENCA = -26\n" 
                ).to_stdout
            end
        end
        context 'quando chamo .call com a = 0, b = 0 , c = 7 e d = 8' do
            it 'deve retornar DIFERENCA = -56' do
                allow_any_instance_of(Object).to receive(:gets).and_return("0", "0", "7", "8")
                expect { described_class.call }.to output(
                    "Digite o número n1: " +
                    "Digite o número n2: " +
                    "Digite o número n3: " +
                    "Digite o número n4: DIFERENCA = -56\n" 
                ).to_stdout
            end
        end
        context 'quando chamo .call com a = 5, b = 6 , c = -7 e d = 8' do
            it 'deve retornar DIFERENCA = 86' do
                allow_any_instance_of(Object).to receive(:gets).and_return("5", "6", "-7", "8")
                expect { described_class.call }.to output(
                    "Digite o número n1: " +
                    "Digite o número n2: " +
                    "Digite o número n3: " +
                    "Digite o número n4: DIFERENCA = 86\n" 
                ).to_stdout
            end
        end
        context 'quando chamo .call com a = 5.0, b = 6.0 , c = 7.0 e d = 8.0' +
        'e depois correto com a = 5, b = 6, c = 7 e d = 8' do
            it 'deve retornar DIFERENCA = -26' do
                allow_any_instance_of(Object).to receive(:gets).and_return(
                    "5.0", "5", "6.0", "6", "7.0", "7", "8.0", "8"
                )
                expect { described_class.call }.to output(
                    "Digite o número n1: " +
                    "Entrada inválida. Por favor, digite um número inteiro.\n" \
                    "Digite o número n1: Digite o número n2: " +
                    "Entrada inválida. Por favor, digite um número inteiro.\n" \
                    "Digite o número n2: Digite o número n3: " +
                    "Entrada inválida. Por favor, digite um número inteiro.\n" \
                    "Digite o número n3: Digite o número n4: " +
                    "Entrada inválida. Por favor, digite um número inteiro.\n" \
                    "Digite o número n4: DIFERENCA = -26\n" 
                ).to_stdout
            end
        end
        context 'quando chamo .call com a = 0.0, b = 0.0 , c = 7.0 e d = 8.0' +
        'e depois correto com a = 0, b = 0, c = 7 e d = 8' do
            it 'deve retornar DIFERENCA = -56' do
                allow_any_instance_of(Object).to receive(:gets).and_return(
                    "0.0", "0", "0.0", "0", "7.0", "7", "8.0", "8"
                )
                expect { described_class.call }.to output(
                    "Digite o número n1: " +
                    "Entrada inválida. Por favor, digite um número inteiro.\n" \
                    "Digite o número n1: Digite o número n2: " +
                    "Entrada inválida. Por favor, digite um número inteiro.\n" \
                    "Digite o número n2: Digite o número n3: " +
                    "Entrada inválida. Por favor, digite um número inteiro.\n" \
                    "Digite o número n3: Digite o número n4: " +
                    "Entrada inválida. Por favor, digite um número inteiro.\n" \
                    "Digite o número n4: DIFERENCA = -56\n" 
                ).to_stdout
            end
        end
        context 'quando chamo .call com a = 5.0, b = 6.0 , c = -7.0 e d = 8.0' +
        'e depois correto com a = 5, b = 6, c = -7 e d = 8' do
            it 'deve retornar DIFERENCA = 86' do
                allow_any_instance_of(Object).to receive(:gets).and_return(
                    "5.0", "5", "6.0", "6", "-7.0", "-7", "8.0", "8"
                )
                expect { described_class.call }.to output(
                    "Digite o número n1: " +
                    "Entrada inválida. Por favor, digite um número inteiro.\n" \
                    "Digite o número n1: Digite o número n2: " +
                    "Entrada inválida. Por favor, digite um número inteiro.\n" \
                    "Digite o número n2: Digite o número n3: " +
                    "Entrada inválida. Por favor, digite um número inteiro.\n" \
                    "Digite o número n3: Digite o número n4: " +
                    "Entrada inválida. Por favor, digite um número inteiro.\n" \
                    "Digite o número n4: DIFERENCA = 86\n" 
                ).to_stdout
            end
        end
        context 'quando chamo .call com a = aa, b = bb , c = cc e d = dd' +
        'e depois correto com a = 5, b = 6, c = 7 e d = 8' do
            it 'deve retornar DIFERENCA = -26' do
                allow_any_instance_of(Object).to receive(:gets).and_return(
                    "aa", "5", "bb", "6", "cc", "7", "dd", "8"
                )
                expect { described_class.call }.to output(
                    "Digite o número n1: " +
                    "Entrada inválida. Por favor, digite um número inteiro.\n" \
                    "Digite o número n1: Digite o número n2: " +
                    "Entrada inválida. Por favor, digite um número inteiro.\n" \
                    "Digite o número n2: Digite o número n3: " +
                    "Entrada inválida. Por favor, digite um número inteiro.\n" \
                    "Digite o número n3: Digite o número n4: " +
                    "Entrada inválida. Por favor, digite um número inteiro.\n" \
                    "Digite o número n4: DIFERENCA = -26\n" 
                ).to_stdout
            end
        end
        context 'quando chamo .call com a = dd, b = ee , c = ff e d = gg' +
        'e depois correto com a = 0, b = 0, c = 7 e d = 8' do
            it 'deve retornar DIFERENCA = -56' do
                allow_any_instance_of(Object).to receive(:gets).and_return(
                    "dd", "0", "ee", "0", "ff", "7", "gg", "8"
                )
                expect { described_class.call }.to output(
                    "Digite o número n1: " +
                    "Entrada inválida. Por favor, digite um número inteiro.\n" \
                    "Digite o número n1: Digite o número n2: " +
                    "Entrada inválida. Por favor, digite um número inteiro.\n" \
                    "Digite o número n2: Digite o número n3: " +
                    "Entrada inválida. Por favor, digite um número inteiro.\n" \
                    "Digite o número n3: Digite o número n4: " +
                    "Entrada inválida. Por favor, digite um número inteiro.\n" \
                    "Digite o número n4: DIFERENCA = -56\n" 
                ).to_stdout
            end
        end
        context 'quando chamo .call com a = !!, b = @@ , c = ## e d = $$' +
        'e depois correto com a = 5, b = 6, c = -7 e d = 8' do
            it 'deve retornar DIFERENCA = 86' do
                allow_any_instance_of(Object).to receive(:gets).and_return(
                    "!!", "5", "@@", "6", "##", "-7", "$$", "8"
                )
                expect { described_class.call }.to output(
                    "Digite o número n1: " +
                    "Entrada inválida. Por favor, digite um número inteiro.\n" \
                    "Digite o número n1: Digite o número n2: " +
                    "Entrada inválida. Por favor, digite um número inteiro.\n" \
                    "Digite o número n2: Digite o número n3: " +
                    "Entrada inválida. Por favor, digite um número inteiro.\n" \
                    "Digite o número n3: Digite o número n4: " +
                    "Entrada inválida. Por favor, digite um número inteiro.\n" \
                    "Digite o número n4: DIFERENCA = 86\n" 
                ).to_stdout
            end
        end
    end 
end
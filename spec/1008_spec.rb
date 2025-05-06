require 'spec_helper'
require '1008.rb'

describe C1008 do
    before(:each) do
        C1008.new
    end
    describe 'Uso do método .call' do
        context 'quando chamo o método call com employee_id = 25, worked_hours = 100 e ' +
        'price_per_hour = 5.5' do
            it 'deve retornar NUMBER = 25\nSALARY = U$ 550.00' do
                allow_any_instance_of(Object).to receive(:gets).and_return("25", "100", "5.5")
                expect { described_class.call }.to output(
                    "Digite o id do colaborador: " +
                    "Digite as horas trabalhadas: " +
                    "Digite o salário por hora: " +
                    "NUMBER = 25\nSALARY = U$ 550.00\n"
                ).to_stdout
            end
        end
        context 'quando chamo o método call com employee_id = 1, worked_hours = 200 e ' +
        'price_per_hour = 20.50' do
            it 'deve retornar NUMBER = 1\nSALARY = U$ 4100.00' do
                allow_any_instance_of(Object).to receive(:gets).and_return("1", "200", "20.50")
                expect { described_class.call }.to output(
                    "Digite o id do colaborador: " +
                    "Digite as horas trabalhadas: " +
                    "Digite o salário por hora: " +
                    "NUMBER = 1\nSALARY = U$ 4100.00\n"
                ).to_stdout
            end
        end
        context 'quando chamo o método call com employee_id = 6, worked_hours = 145 e ' +
        'price_per_hour = 15.55' do
            it 'deve retornar NUMBER = 6\nSALARY = U$ 2254.75' do
                allow_any_instance_of(Object).to receive(:gets).and_return("6", "145", "15.55")
                expect { described_class.call }.to output(
                    "Digite o id do colaborador: " +
                    "Digite as horas trabalhadas: " +
                    "Digite o salário por hora: " +
                    "NUMBER = 6\nSALARY = U$ 2254.75\n"
                ).to_stdout
            end
        end
    end
end
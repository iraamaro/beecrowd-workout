require 'spec_helper'
require '1009.rb'

describe C1009 do
    before(:each) do
        C1009.new
    end
    describe 'Uso do método .call' do
        context 'quando chamo o método call com employee_name = JOAO, employee_salary = 500 e ' +
        'order_value = 1230.30' do
            it 'deve retornar TOTAL = R$ 684.54' do
                allow_any_instance_of(Object).to receive(:gets).and_return("JOAO", "500", "1230.30")
                expect { described_class.call }.to output(
                    "Digite o nome do colaborador: " +
                    "Digite o salário em R$: " +
                    "Digite o valor da venda em R$: " +
                    "TOTAL = R$ 684.54\n"
                ).to_stdout
            end
        end
        context 'quando chamo o método call com employee_name = PEDRO, employee_salary = 700 e ' +
        'order_value = 0' do
            it 'deve retornar TOTAL = R$ 700' do
                allow_any_instance_of(Object).to receive(:gets).and_return("PEDRO", "700", "0")
                expect { described_class.call }.to output(
                    "Digite o nome do colaborador: " +
                    "Digite o salário em R$: " +
                    "Digite o valor da venda em R$: " +
                    "TOTAL = R$ 700.00\n"
                ).to_stdout
            end
        end
        context 'quando chamo o método call com employee_name = MANGOJATA, ' +
        'employee_salary = 1700 e order_value = 1230.50' do
            it 'deve retornar TOTAL = R$ 1884.58' do
                allow_any_instance_of(Object).to receive(:gets).and_return("MANGOJATA", "1700", "1230.50")
                expect { described_class.call }.to output(
                    "Digite o nome do colaborador: " +
                    "Digite o salário em R$: " +
                    "Digite o valor da venda em R$: " +
                    "TOTAL = R$ 1884.58\n"
                ).to_stdout
            end
        end
        context 'quando chamo o método call com employee_name = _JOAO, employee_salary = -500 e ' +
        'order_value = -1230.30 e depois o correto com employee_name = JOAO, ' +
        'employee_salary = 500 e order_value = 1230.30' do
            it 'deve retornar TOTAL = R$ 684.54' do
                allow_any_instance_of(Object).to receive(:gets).and_return(
                    " JOAO", "JOAO", "-500", "500", "-1230.30", "1230.30"
                )
                expect { described_class.call }.to output(
                    "Digite o nome do colaborador: " +
                    "Entrada inválida. Por favor, digite um sem espaços no início ou fim.\n" \
                    "Digite o nome do colaborador: Digite o salário em R$: " +
                    "Entrada inválida. Por favor, digite um número positivo.\n" \
                    "Digite o salário em R$: Digite o valor da venda em R$: " +
                    "Entrada inválida. Por favor, digite um número positivo.\n" \
                    "Digite o valor da venda em R$: TOTAL = R$ 684.54\n"
                ).to_stdout
            end
        end
        context 'quando chamo o método call com employee_name = PEDRO_, employee_salary = -700.00 e ' +
        'order_value = " " e depois o correto com employee_name = PEDRO, ' +
        'employee_salary = 700.00 e order_value = 0.00' do
            it 'deve retornar TOTAL = R$ 700.00' do
                allow_any_instance_of(Object).to receive(:gets).and_return(
                    "PEDRO ", "PEDRO", "-700.00", "700.00", " ", "0.00"
                )
                expect { described_class.call }.to output(
                    "Digite o nome do colaborador: " +
                    "Entrada inválida. Por favor, digite um sem espaços no início ou fim.\n" \
                    "Digite o nome do colaborador: Digite o salário em R$: " +
                    "Entrada inválida. Por favor, digite um número positivo.\n" \
                    "Digite o salário em R$: Digite o valor da venda em R$: " +
                    "Entrada inválida. Por favor, digite um número positivo.\n" \
                    "Digite o valor da venda em R$: TOTAL = R$ 700.00\n"
                ).to_stdout
            end
        end
        context 'quando chamo o método call com employee_name = _MANGOJATA_, employee_salary = -1700.00 e ' +
        'order_value = -1230.50 e depois o correto com employee_name = MANGOJATA, ' +
        'employee_salary = 1700.00 e order_value = 1230.50' do
            it 'deve retornar TOTAL = R$ 1884.58' do
                allow_any_instance_of(Object).to receive(:gets).and_return(
                    " MANGOJATA ", "MANGOJATA", "-1700.00", "1700.00", "-1230.50", "1230.50"
                )
                expect { described_class.call }.to output(
                    "Digite o nome do colaborador: " +
                    "Entrada inválida. Por favor, digite um sem espaços no início ou fim.\n" \
                    "Digite o nome do colaborador: Digite o salário em R$: " +
                    "Entrada inválida. Por favor, digite um número positivo.\n" \
                    "Digite o salário em R$: Digite o valor da venda em R$: " +
                    "Entrada inválida. Por favor, digite um número positivo.\n" \
                    "Digite o valor da venda em R$: TOTAL = R$ 1884.58\n"
                ).to_stdout
            end
        end
    end
end
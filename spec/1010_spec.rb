require 'spec_helper'
require '1010.rb'

describe C1010 do
    before(:each) do
        @order = nil
    end
    describe 'Uso do método .summary' do
        context 'calcula o total dos produtos A = 12, (1, 5.30) e B = 16, (2, 5.10)' do
            it 'deve retornar 15.50' do
                @order = C1010.new(1, 5.30, 2, 5.10)
                expect(@order.summary).to eq("15.50")
            end
        end
        context 'calcula o total dos produtos A = 13, (2, 15.30) e B = 161, (4, 5.20)' do
            it 'deve retornar 51.40' do
                @order = C1010.new(2, 15.30, 4, 5.20)
                expect(@order.summary).to eq("51.40")
            end
        end
        context 'calcula o total dos produtos A = 1, (1, 15.10) e B = 2, (1, 15.10)' do
            it 'deve retornar 30.20' do
                @order = C1010.new(1, 15.10, 1, 15.10)
                expect(@order.summary).to eq("30.20")
            end
        end
    end
end
require './koodi.rb'

RSpec.describe 'metodi puuttuva' do
  it "palauttaa taulukosta puuttuvan luvun" do
    method_taking_array_exists(self, :keskiarvo, [1, 3])

    expect(keskiarvo([1, 3])).to eq(2.0)
    expect(keskiarvo([1, 2])).to eq(1.5)
    expect(keskiarvo([7, 5, 1, 6, 8])).to eq(5.4)
    expect(keskiarvo([2, 5, -1, 5, -8, 1, 3])).to eq(1.0)
    expect(keskiarvo([1, 2, 7, 0, 5, 2, 1, 3, 6])).to eq(3.0)
    expect(keskiarvo([0, 1, 44, 1, 6, 2, 9])).to eq(9.0)

  end

  it "kutsuu taulukolle metodia inject" do
    inject_called = false
    table = [1,3]
    allow(table).to receive(:inject) do |arg|
        inject_called = true
        1
    end
    keskiarvo(table)
    expect(inject_called).to be true
  end
end

require './koodi.rb'

RSpec.describe 'metodi puuttuva' do
  it "palauttaa taulukosta puuttuvan luvun" do
    method_taking_array_exists(self, :osa, [1, 3])

    expect(osa([1, 3])).to eq([3])
    expect(osa([5, 7, 1, 6, 8])).to match_array([7, 6, 8])
    expect(osa([2, 5, -1, 5, -8, 1, 3])).to match_array([5, 5, 3])
    expect(osa([1, 2, 7, 0, 5, 2, 1, 3, 6])).to match_array([2, 7, 5, 2, 3, 6])
    expect(osa([0, 1, 44, 1, 6, 2, 9])).to match_array([1, 44, 1, 6, 2, 9])
    expect(osa([2, 1])).to eq([])

  end

  it "kutsuu taulukolle metodia reject" do
    reject_called = false
    table = [1,3]
    allow(table).to receive(:reject) do |arg|
        reject_called = true
        []
    end
    osa(table)
    expect(reject_called).to be true
  end
end

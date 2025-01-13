require './koodi.rb'

RSpec.describe 'metodi tulosta' do
  it "tulostaa taulukon alkiot samalle riville" do
    method_taking_array_exists(self, :tulosta, [1, 2])

    expect {
      tulosta([1, 2])
    }.to output(/^12(\n)?$/).to_stdout

    expect {
      tulosta([4, 6, 3, 1, 8])
    }.to output(/^46318(\n)?$/).to_stdout

    expect {
      tulosta([8, 8, 8, 8, 10, 1, 2, 3])
    }.to output(/^888810123(\n)?$/).to_stdout

    expect {
      tulosta([0, 4, 0, 1, 2, 3, 4])
    }.to output(/^0401234(\n)?$/).to_stdout
  end
end
require './koodi.rb'

RSpec.describe 'metodi erotus' do
  it "tulostaa parametriensa erotuksen" do
    method_exists(self, :erotus, 2,1)

    expect {
      erotus(1, 1)
    }.to output(/^0(\n)?$/).to_stdout

    expect {
      erotus(3, 2)
    }.to output(/^1(\n)?$/).to_stdout

    expect {
      erotus(10, 25)
    }.to output(/^-15(\n)?$/).to_stdout

    expect {
      erotus(100, 9)
    }.to output(/^91(\n)?$/).to_stdout
  end
end
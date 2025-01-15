require './koodi.rb'
RSpec.describe 'metodi tulosta' do

  it "on määritelty" do
    method_exists(self, :tulosta, 1)
  end

  it "toimii ilman lohkoa" do
    expect {
      tulosta(1)
    }.to output(/^1(\n)?$/).to_stdout

    expect {
      tulosta('foobar')
    }.to output(/^foobar(\n)?$/).to_stdout
  end

  it "toimii lohkon kanssa" do
    expect {
      tulosta(5) do |luku|
        luku
      end
    }.to output(/^5(\n)?$/).to_stdout

    expect {
      tulosta(5) do |luku|
        luku*2
      end
    }.to output(/^10(\n)?$/).to_stdout

    expect {
      tulosta(5) do |luku|
        "x"*luku
      end
    }.to output(/^xxxxx(\n)?$/).to_stdout

    expect {
      tulosta([1, 2, 3, 4]) do |t|
        t.inject(:+)
      end
    }.to output(/^10(\n)?$/).to_stdout
  end

end
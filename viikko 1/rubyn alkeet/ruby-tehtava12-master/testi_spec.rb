require './koodi.rb'

RSpec.describe 'metodi luokittelu' do
  it "palauttaa hashin, johon on luokiteltu parametrina olevat luvut" do
    method_taking_array_exists(self, :luokittelu, [1, 2, 3] )

    expect(luokittelu([1, 2, 3])).to eq(
      negatiivinen: [],
      positiivinen: [1, 2, 3],
      parillinen: [2],
      pariton: [1, 3],
      summa: 6
    )

    expect(luokittelu([1, -2, 3, -1])).to eq(
      negatiivinen: [-2, -1],
      positiivinen: [1, 3],
      parillinen: [-2],
      pariton: [-1, 1, 3],
      summa: 1
    )

    expect(luokittelu([7, 6, 3, 9, -1, -4, -6, 11, -5])).to eq(
      negatiivinen: [-6, -5, -4, -1],
      pariton: [-5, -1, 3, 7, 9, 11],
      parillinen: [-6, -4, 6],
      positiivinen: [3, 6, 7, 9, 11],
      summa: 20
    )

    expect(luokittelu([11, 43, 543, 77, 3, -1, -54, 12, 2])).to eq(
      negatiivinen: [-54, -1],
      parillinen: [-54, 2, 12],
      pariton: [-1, 3, 11, 43, 77, 543],
      positiivinen: [2, 3, 11, 12, 43, 77, 543],
      summa: 636,
    )

    expect(luokittelu([])).to eq(
      negatiivinen: [],
      positiivinen: [],
      parillinen: [],
      pariton: [],
      summa: 0
    )
  end

end

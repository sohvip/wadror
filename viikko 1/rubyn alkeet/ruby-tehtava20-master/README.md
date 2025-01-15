Tee luokka `Pino`, jolla on seuraavat metodit
* `push(x)` laittaa x:n pinoon
* `pop` ottaa palauttaa pinon päälimmäisen alkion, jos pino on tyhjä heitetään `RuntimeError` poikkeus

Tämän lisäksi pinon tulee sisällyttää moduuli `Enumerable`
Sisälläytyksen ansiosta pino siis saa kaiken [toiminnallisuuden](http://ruby-doc.org/core-2.3.0/Enumerable.html) mitä Enumerable-moduuli määrittelee
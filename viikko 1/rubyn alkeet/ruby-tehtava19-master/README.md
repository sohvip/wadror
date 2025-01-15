Tee (tiedostoon koodi.rb) metodi `tulosta(x)`, joka tulostaa parametrinsa `x` siten, että parametrille on suoritettu ensin metodin parametrina oleva _koodilohko_. Jos metodille ei ole annettu koodilohkoa parametriksi, se tulostaa ainoastaan parametrinsa `x`. Vihje: metodi voi tarkistaa onko sen parametrina koodilohko kutsumalla `block_given?`

Esim. jos metodia kutsutaan seuraavasti:
```ruby
tulosta 5 do |luku|
  "x"*luku
end
```

Tulostuu

```
xxxxx
```
Tee luokka `Lukija`, joka saa konstruktorin parametrina tiedoston nimen. Tiedosto sisältää tuntikirjauksia, ja on muotoa:

```
2.9.15 7h
3.9.15 3h
4.9.15 8h
5.9.15 4h
6.9.15 5h
7.9.15 4h
8.9.15 1h
11.9.15 2h
```

eli tiedoston yksittäinen rivi sisältää päivämäärän ja tuntikirjauksen. Luokalla on metodi `tilasto`, joka palauttaa syötteen perusteella muodostettavan hashin, jolla on seuraavat avaimet ja arvot
* :yhteensa, tuntikirjausten summa
* :keskiarvo, keskimääräinen tuntikirjaus
* :alku, tuntikirjausten ensimmäinen päivä
* :loppu, tuntikirjausten viimeinen päivä

Päivämäärät tulee ilmaista Rubyn Date-luokan to_s-metodin generoimassa muodossa.

Huomaa, että kirjaukset eivät ole tiedostossa välttämättä järjestyksessä
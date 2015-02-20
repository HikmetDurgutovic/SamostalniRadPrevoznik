Napravite bazu podataka za nekog prevoznika. Prevoznik u svom voznom parku ima autobuse, tramvaje i trolejbuse. 
Osim toga baza treba da sadrzava i podatke o vozacima (ime i prezime, godine, godina zaposlenja). 
Baza treba da zadrzava podatke o linijama na kojima prevoznik saobraca, svaka linija ima svoju polaznu i krajnju tacku. 
Za svaku liniju je dakle potrebno znati koja je polazna a koja krajnja tacka, vrijeme prve voznje i vremenski interval voznji. 
(Recimo linija 27 saobraca od Vijecnice do Hrasnice, prva voznja je u 7 ujutru, a autobus ide svakih sat vremena). 
Vozaci rade u smijenama pa je potrebno evidentirati koji vozac radi koju smjenu. 
Vozaci rade na odredenim linijama, pa je tako moguce da vozaci rade i na vise linija (u vise smijena), 
ali nije dozboljeno da se vozac, linija kombinacija ponavlja u tabeli. Svako vozilo moze da vozi na jednoj ili vise linija. 
Za svako vozilo je potrebno znati idenitikacijski broj i tip vozila.

Query-e koje pisete mozete definisati kao view ili spremiti query u file sa odgovarajucim imenom 
npr. lista_vozaca.sql

Query:

Izlistati sve vozace zajedno za identifikacijskim brojem i tipom vozila koja su koristili 
Izlistati sve tramvajske linije - polazna stanica i krajnja stanica 
Izlistati sve trolejbuske linije - polazna stanica i krajnja stanica
 Izlistati sve autobuske linije - - polazna stanica i krajnja stanica 
Izlistati sve stanice sa kojih polaze autobusi i trolejbusi
 Izlistati sve stanice sa kojih polaze autobusi i tramvaji 
Napisati query koji ce vratiti prosjek godina vozaca Query koji ce ispisati prosjek godina rada u firmi za vozace 
Napisati ime i prezime najstarijeg vozaca 
Za odredenu stanicu napisati sve linije koje polaze sa te stanice, ispis sortirati po frekvenciji voznje na liniji 
Za odredenu liniju ispisati sve vozace koji rade na toj liniji 
Za odredeno vozilo ispisati sve vozace koji su ga koristili Imena vozaca koji voze na liniji sa rednim brojem 1 i liniji sa rednim brojem 20
 Izlistati vozace koji rade u prvoj smijeni Izlistati vozace koji rade u prvoj smjeni a voze autobuse. 
Izlistati sve polazne stanice za odredenog vozaca
:-(clause(muzyk(_,_,_,_,_),_); reconsult('baza.pl')).

start:-
        nl, nl,
        write('_________________________________________________'),nl,
        write('|                                               |'),nl,
        write('|                 Ambrozy Pala                  |'),nl,
        write('|          Barok-Klasycyzm-Romantyzm            |'),nl,
        write('|                Informatyka gr 23              |'),nl,
        write('|_______________________________________________|'),nl,
        write('|                                               |'),nl,
        write('|                     Menu:                     |'),nl,
        write('|    "1." - Lista dzieł muzycznych              |'),nl,
        write('|    "2." - Wyszukaj muzykow wedlug epoki       |'),nl,
        write('|    "3." - Znajdz gatunek (wnioskowanie)       |'),nl,
        write('|    "4." - Dodaj Muzyka i caly jego dorobek    |'),nl,
        write('|    "5." - Usuń kompozytora z listy            |'),nl,
        write('|    "6." - Zakoncz dzialanie programu          |'),nl,
        write('|                                               |'),nl,
        write('|_______________________________________________|'),nl,
        nl,
        write(': Którą opcję wybierasz? '),nl,
        read(Opcja),
        menu_glowne(Opcja).

%Wypisuje spis muzykow. Nastepnie prosi o podanie jednego z dostepnych kompozytorow i wyswietla wykaz jego dziel
menu_glowne(1):-
            nl,
            write("Wykaz muzykow: "),
            lista_muzykow, %wWypisanie lista muzykow
            write('Podaj nazwę muzyka (format: "Muzyk".) '),nl,
            read(Nazwa),
            pisz_dziela(Nazwa), %Wypisanie informacji oraz wykaz dziel Nazwa
            dalej(TN),
            (TN = t, menu_glowne(1); start).
%Wyszukiwanie muzykow danej epoki
menu_glowne(2):-
            nl,
            write("Lista epok: "), nl,
            lista_epok, %Wypisanie listy epok
            write(' Podaj nazwę epoki (format: nazwa epoki.) '), nl,
            read(Nazwa),nl,
            pisz_muzykow_wg_epoki(Nazwa), %Wypisanie muzykow epoki
            write('Czy chcesz wyświetlić wykaz wszystkich dziel muzyka? (t./n.) '),nl,
            read(Odp),
            sprawdz1(Odp).

%Wnioskowanie - wybieranie danej formy muzycznej na podstawie kilku pytan
menu_glowne(3):-
            nl,
            write('Jaka forme muzyczna powinienem wybrac?'), nl,
            write('Na każde pytanie odpowiedz za pomocą cyfry przy odpowiedzi (format: x.)'), nl,
            wyczysc_odpowiedzi,
            znajdz_forme(Forma), %Wyszukuje dana forma
            wypisz_forme(Forma), %Wypisuje dana forma
            dalej(TN),
            (TN = t,  menu_glowne(3); start).

%Dodawanie muzykow
menu_glowne(4):-
            nl,
            write('Dodajemy kompozytora!Wypełnij dane: '),nl,
            write("Podaj imie i nazwisko formacie: \"np. Fryderyk Chopin\" "),nl,
            read(ImieiNazwisko),
            write("Podaj rok urodzenia w formacie 1760. "),nl,
            read(RokUrodzenia),
            write("Podaj rok smierci w formacie 1811. "),nl,
            read(RokSmierci),
            write("Lista epok: "), nl,
            write("barok,klasycyzm,romantyzm"), nl,
            write("Podaj epoke muzyka w formacie epoka. "),nl,
            read(Epoka),
            write("Czas na kompozycje! Podaj ile kompozycji chcesz dodać (format: 7.) "),nl,
            read(Num),
            zczytajDziela(Lista, Num, ImieiNazwisko, RokUrodzenia, RokSmierci, Epoka).

%Usuwanie muzyka
menu_glowne(5):-
            nl,
            write('Postanowiłeś usunąć kompozytora, ktorego?'),nl,
            write("Lista muzykow: "),nl,
            lista_muzykow,
            write("Podaj nazwę kompozytora do usunięcia w formacie \"Nazwa\" "),nl,
            read(MuzykUsun),
            (retract(muzyk(MuzykUsun,_,_,_,_)),
            write('Kompozytor usunięty!')),nl,
            dalej(TN),
            (TN = t,  menu_glowne(5) ; start).

%Zamykanie programu
menu_glowne(6):-
            nl,
            retractall(muzyk(_,_,_,_,_)),
            write("Koniec programu..."),
            halt.

%dot. dodawania muzykow, tworzenie listy dziel dla danego muzyka
zczytajDziela(Lista, Num, ImieiNazwisko, RokUrodzenia, RokSmierci, Epoka):-
            write("Podaj nazwę dziela w formacie: \"Nazwa dziela\". "),nl,
            read(NazwaDziela),
            write("Jakiego typu jest to dzielo, napisz w formacie: wokalno-instrumentalny. "),nl,
            read(Typ),
            write("Podaj gatunek dziela kompozytora w formacie: opera. "),nl,
            read(Gatunek),
	    write("Podaj tonacje dziela w formacie: moll."),nl,
	    read(Tonacja),
            append(Lista, [[NazwaDziela, Typ, Gatunek, Tonacja]], NowaLista),
            write("Dodano nowego muzyka !!"), nl,
            Num2 is Num - 1,
            (Num2 > 0 -> zczytajDziela(NowaLista, Num2, ImieiNazwisko, RokUrodzenia, RokSmierci, Epoka) ; cont_menu_glowne_4(NowaLista, ImieiNazwisko, RokUrodzenia, RokSmierci, Epoka)).

%dot. dodawania muzyka, wykonuje sie po zczytaniu wszystkich albumow, dodaje muzyka do bazy
cont_menu_glowne_4(NowaLista, ImieiNazwisko, RokUrodzenia, RokSmierci, Epoka):-
            write("Podano wszystkie dane! Imie i Nazwisko "), write(ImieiNazwisko), write(" został dodany!"),
            (muzyk(ImieiNazwisko,_,_,_,_), write('ERROR! Taki kompozytor już istnieje!'), nl ;
            assertz(muzyk(ImieiNazwisko,RokUrodzenia,RokSmierci,Epoka,NowaLista)), nl),
            append('baza.pl'),
            write(muzyk(ImieiNazwisko,RokUrodzenia,RokSmierci,Epoka,NowaLista)), write(.), nl,
            told,
            dalej(TN),
            (TN = t,  menu_glowne(4) ; start).

%dot. wnioskowania, wyszukiwania form wedlug pytan
znajdz_forme(Forma):-
            forma(Forma), !.

%dot. wnioskowania, ustawienie predykatu odpowiedzi na dynamiczny (moze ulegac zmianom w trakcie dzialania programu)
:- dynamic(odpowiedzi/2).

%dot. wnioskowania, czyszczenie odpowiedzi
wyczysc_odpowiedzi:-
            retract(odpowiedzi(_, _)),
            fail.
wyczysc_odpowiedzi.

%dot. wnioskowania, wypisywanie formy
wypisz_forme(Forma):-
            write("Wybrano dla Ciebie: "), nl,
            wypisz(Forma).
%dot. wyszukiwania muzyka wedlug epoki i wyswietla jego katalog
sprawdz1(Odp):-
            Odp = t,
            write('Podaj muzyka (format: "Muzyk".): '),
            nl,
            read(Nazwa),
            pisz_dziela(Nazwa),
            dalej(TN),
            (TN = t, menu_glowne(2) ; start) ; start.

%powtarzanie operacji
dalej(TN):-
            nl,
            write('Czy chcesz powtórzyć operację? (t. - tak, n. - menu)'), nl,
            read(TN).
            
%dot. wypisywania katalogu i informacji o kompozytorze
pisz_dziela(Nazwa):-
            muzyk(Nazwa, RokUrodzenia, RokSmierci, Epoka, Katalog),
            write("Kompozytor: "), write(Nazwa), nl, write("Zycie: "), write(RokUrodzenia), write("-"), write(RokSmierci), nl, write("Epoka: "), write(Epoka), nl,
            write("Katalog:"), nl,
            pisz_utwor(Katalog).

%wypisywanie muzykow wg epoki
pisz_muzykow_wg_epoki(NazwaX):-
            findall(ImieiNazwisko, muzyk(ImieiNazwisko, _, _, NazwaX, _), W),nl,
            pisz_liste(W),
            nl.


%usuwanie powtorzen w liscie 
usun_powtorzenia([],[]).

usun_powtorzenia([H | T], List) :-
     member(H, T),
     usun_powtorzenia( T, List).

usun_powtorzenia([H | T], [H|T1]) :-
      \+member(H, T),
      usun_powtorzenia( T, T1).

%tworzenie listy muzykow
lista_muzykow:-
            findall(ImieiNazwisko, muzyk(ImieiNazwisko, _, _, _, _), X),
            pisz_liste(X),
            nl.

%tworzenie listy epok
lista_epok:-
            findall(NazwaEpoki, muzyk(_, _, _, NazwaEpoki, _), X),
            usun_powtorzenia(X, Y),
            pisz_liste(Y),
            nl.

%wypisywanie dziel
pisz_utwor([]).
pisz_utwor([[NazwaUtworu, TypUtworu, RodzajUtworu, TonacjaUtworu]|Dalej]):-
            tab(5),write(NazwaUtworu), write(" - "), write(TypUtworu), write(" - "), write(RodzajUtworu), write(" - "), write(TonacjaUtworu),
            nl,
            pisz_utwor(Dalej).

%wypisywanie list
pisz_liste([]).
pisz_liste([Glowa|Ogon]):-
            print(Glowa),
            write(", "),nl,
            pisz_liste(Ogon).


%dot. wnioskowania, mozliwe odpowiedzi dla danego pytania
tempo(Odpowiedz):-
            odpowiedzi(tempo, Odpowiedz).
tempo(Odpowiedz):-
            \+ odpowiedzi(tempo, _),
            zapytaj(tempo, Odpowiedz, [wolne, umiarkowane, szybkie]).

wokal(Odpowiedz):-
            odpowiedzi(wokal, Odpowiedz).
wokal(Odpowiedz):-
            \+ odpowiedzi(wokal, _),
            zapytaj(wokal, Odpowiedz, [nie, tak]).

epoka(Odpowiedz):-
            odpowiedzi(epoka, Odpowiedz).
epoka(Odpowiedz):-
            \+ odpowiedzi(epoka, _),
            zapytaj(epoka, Odpowiedz, [barok, klasycyzm, romantyzm]).

nastroj(Odpowiedz):-
            odpowiedzi(nastroj, Odpowiedz).
nastroj(Odpowiedz):-
            \+ odpowiedzi(nastroj, _),
            zapytaj(nastroj, Odpowiedz, [smutny, powazny, wesoly]).

%wypisywanie mozliwych odpowiedzi
mojeOdpowiedzi([]).
mojeOdpowiedzi([G|O]) :-
            write("> "), odp(G), nl,
            mojeOdpowiedzi(O).

%zadanie pytania, wypisanie mozliwych odpowiedzi, pobranie odpowiedzi, dodanie predykatu odpowiedzi
zapytaj(Pytanie, Odpowiedz, BazaOdp) :-
            pytanie(Pytanie),
            mojeOdpowiedzi(BazaOdp),
            read(Odczytane),
            asserta(odpowiedzi(Pytanie, Odczytane)),
            Odczytane = Odpowiedz.

:-dynamic muzyk/5.
%Baza muzykow
muzyk("Johann Sebastian Bach", 1685, 1750, barok, [
["Brandenburg Concertos", instrumentalne, concerto-grosso, dur],
["Violin Concertos", instrumentalne, violin-concerto, moll ; dur],
["Messe in H-moll", wokalno-instrumentalne, msza, moll],
["Matthew Passion", wokalno-instrumentalne, pasja, moll],
["Kunst der Fuge", klawesyn, fuga, moll ; dur],
["Goldberg Variations", klawesyn, sonata, moll ; dur],
["Christmas Oratorium", wokalno-instrumentalne, oratorium, moll ; dur]
]).
muzyk("Antonio Vivaldi", 1678, 1741, barok, [
["Stabat Mater", wokalno-instrumentalne, utwor-religijny, moll],
["Le quattro stagioni", instrumentalne,violin-concerto, dur ; moll],
["Cello Concertos", instrumentalne, violin-concerto, dur],
["Concertos for the Emperor", instrumentalne, violin-concerto, dur]
]).
muzyk("Wolfgang Amadeus Mozart", 1756, 1791, klasycyzm, [
["Don Giovanni", wokalno-instrumentalny, opera, dur;moll],
["Le nozze di Figaro", wokalno-instrumentalny, opera, dur;moll],
["Cosi fan tutte", wokalno-instrumentalny, opera, dur;moll],
["Die Zauberflote", wokalno-instrumentalny, opera, dur;moll],
["Die Entfuhrung aus dem Serail",wokalno-instrumentalny, opera, dur;moll],
["Requiem",wokalno-instrumentalny, msza, moll],
["Mass in C minor",wokalno-instrumentalny, msza, moll],
["Clarinet Concerto",instrumentalny, koncert-klarnetowy , dur],
["Gran Partita",instrumentalny, serenada,moll],
["Jupiter Symphony",instrumentalny, symfonia, dur],
["Piano Concertos",instrumentalny, piano-concerto, dur;moll],
["Sinfonia Concertante kv 364",instrumentalny, sinfonia-concertante, dur],
["Piano sonata  alla-turca",pianoforte, sonata, dur]
]).
muzyk("Joseph Haydn", 1732, 1809, klasycyzm, [
["Piano sonatas",pianoforte, sonata, dur],
["Seven Last Words of Christ",wokalno-instrumentalny,utwor-religijny , moll],
["London Symphony",instrumentalne, symfonia, dur]
]).
muzyk("Ludwig van Beethoven", 1770, 1827, romantyzm, [
["IX Symphony ",wokalno-instrumentalny, symfonia, moll],
["Eroica Symphony ",instrumentalny, symfonia, dur],
["Sonata Pathetique ",fortepian, sonata, moll],
["Moonlight Sonata ",fortepian, sonata, moll],
["V Symphony ",instrumentalny, symfonia, moll]
]).
muzyk("Franz Schubert", 1797, 1828, romantyzm, [
["Unfinished Symphony ",instrumentalny, symfonia, moll],
["Trout Quintet ",instrumentalny, piano-quintet, dur],
["Piano Trio ",instrumentalny, piano-trio, moll],
["Impromptus D.899",fortepian, sonata, moll]
]).
muzyk("Fryderyk Chopin", 1810, 1849, romantyzm, [
["24 Preludes",fortepian, preludia, moll;dur],
["4 Mazurkas",fortepian, mazurki, moll],
["Piano sonata no 2",fortepian, sonata, moll],
["Nocturnes",fortepian, nokturny, moll],
["Polonaises",fortepian, polonezy, moll],
["Piano Concerto 1,2",instrumentalne, piano-concerto, moll]
]).
%Baza form
forma(concerto-grosso):-
            tempo(szybkie),
            wokal(nie),
            epoka(barok),
			nastroj(wesoly).
forma(violin-concerto):-
            tempo(szybkie),
            wokal(nie),
            epoka(klasycyzm),
			nastroj(wesoly).
forma(msza):-
            tempo(umiarkowane),
            wokal(tak),
            epoka(klasycyzm),
			nastroj(powazny).

forma(pasja):-
            tempo(wolne),
            wokal(tak),
            epoka(barok),
			nastroj(powazny).

forma(fuga):-
            tempo(umiarkowane),
            wokal(nie),
            epoka(barok),
			nastroj(wesoly).

forma(sonata):-
            tempo(szybkie),
            wokal(nie),
            epoka(klasycyzm),
			nastroj(wesoly).

forma(oratorium):-
            tempo(szybkie),
            wokal(tak),
            epoka(barok),
			nastroj(wesoly).

forma(utwor-religijny):-
            tempo(umiarkowane),
            wokal(tak),
            epoka(barok),
			nastroj(powazny).

forma(opera):-
            tempo(umiarkowane),
            wokal(tak),
            epoka(klasycyzm),
			nastroj(wesoly).

forma(koncert-klarnetowy):-
            tempo(umiarkowane),
            wokal(nie),
            epoka(klasycyzm),
			nastroj(wesoly).

forma(serenada):-
            tempo(umiarkowane),
            wokal(nie),
            epoka(klasycyzm),
			nastroj(powazny).

forma(symfonia):-
            tempo(wolne),
            wokal(nie),
            epoka(klasycyzm),
			nastroj(powazny).

forma(piano-concerto):-
            tempo(umiarkowane),
            wokal(nie),
            epoka(klasycyzm),
			nastroj(powazny).

forma(sinfonia-concertante):-
            tempo(szybkie),
            wokal(nie),
            epoka(klasycyzm),
			nastroj(powazny).

forma(piano-quintet):-
            tempo(wolne),
            wokal(nie),
            epoka(klasycyzm),
			nastroj(wesoly).

forma(piano-trio):-
            tempo(umiarkowane),
            wokal(nie),
            epoka(klasycyzm),
			nastroj(smutny).

forma(preludia):-
            tempo(szybkie),
            wokal(nie),
            epoka(romantyzm),
			nastroj(wesoly).

forma(mazurki):-
            tempo(umiarkowane),
            wokal(nie),
            epoka(romantyzm),
			nastroj(wesoly).

forma(nokturny):-
            tempo(wolne),
            wokal(nie),
            epoka(romantyzm),
			nastroj(smutny).

forma(polonezy):-
            tempo(umiarkowane),
            wokal(nie),
            epoka(romantyzm),
			nastroj(powazny).
            
forma(aria):-
            tempo(wolne),
            wokal(tak),
            epoka(klasycyzm),
			nastroj(wesoly).            

forma(choral):-
            tempo(wolne),
            wokal(tak),
            epoka(barok),
			nastroj(smutny).   

forma(arietta):-
            tempo(wolne),
            wokal(tak),
            epoka(barok),
			nastroj(wesoly). 

forma(motet):-
            tempo(umiarkowane),
            wokal(tak),
            epoka(barok),
			nastroj(wesoly).  
            
forma(kantata):-
            tempo(umiarkowane),
            wokal(tak),
            epoka(barok),
			nastroj(smutny).    

forma(suita):-
            tempo(umiarkowane),
            wokal(nie),
            epoka(barok),
			nastroj(powazny).
            
forma(fugato):-
            tempo(umiarkowane),
            wokal(nie),
            epoka(barok),
			nastroj(smutny).  

forma(partita):-
            tempo(szybkie),
            wokal(nie),
            epoka(barok),
			nastroj(powazny). 
            
forma(toccata):-
            tempo(szybkie),
            wokal(nie),
            epoka(barok),
			nastroj(smutny).  

forma(kantyk):-
            tempo(szybkie),
            wokal(tak),
            epoka(barok),
			nastroj(powazny).
            
forma(psalm):-
            tempo(szybkie),
            wokal(tak),
            epoka(barok),
			nastroj(smutny).            

forma(lament):-
            tempo(wolne),
            wokal(nie),
            epoka(barok),
			nastroj(powazny). 
forma(chiesa):-
            tempo(wolne),
            wokal(nie),
            epoka(barok),
			nastroj(wesoly).

forma(fantasia):-
            tempo(szybkie),
            wokal(nie),
            epoka(klasycyzm),
			nastroj(smutny).

forma(gigue):-
            tempo(szybkie),
            wokal(tak),
            epoka(klasycyzm),
			nastroj(wesoly).

forma(ballada):-
            tempo(szybkie),
            wokal(tak),
            epoka(klasycyzm),
			nastroj(powazny).

forma(koleda):-
            tempo(szybkie),
            wokal(tak),
            epoka(klasycyzm),
			nastroj(smutny).
            
forma(jota):-
            tempo(umiarkowane),
            wokal(tak),
            epoka(klasycyzm),
			nastroj(smutny).

forma(marsz):-
            tempo(wolne),
            wokal(nie),
            epoka(klasycyzm),
			nastroj(smutny).

forma(recytatyw):-
            tempo(wolne),
            wokal(tak),
            epoka(klasycyzm),
			nastroj(powazny).

forma(dumka):-
            tempo(wolne),
            wokal(tak),
            epoka(klasycyzm),
			nastroj(smutny).

forma(barkarola):-
            tempo(szybkie),
            wokal(nie),
            epoka(romantyzm),
			nastroj(powazny).

forma(kolysanka):-
            tempo(szybkie),
            wokal(nie),
            epoka(romantyzm),
			nastroj(smutny).

forma(rapsodia):-
            tempo(szybkie),
            wokal(tak),
            epoka(romantyzm),
			nastroj(wesoly).

forma(hymn):-
            tempo(szybkie),
            wokal(tak),
            epoka(romantyzm),
			nastroj(powazny).

forma(ricercar):-
            tempo(szybkie),
            wokal(tak),
            epoka(romantyzm),
			nastroj(smutny).

forma(sonatina):-
            tempo(umiarkowane),
            wokal(nie),
            epoka(romantyzm),
			nastroj(smutny).

forma(wodewil):-
            tempo(umiarkowane),
            wokal(tak),
            epoka(romantyzm),
			nastroj(wesoly).

forma(elegia):-
            tempo(umiarkowane),
            wokal(tak),
            epoka(romantyzm),
			nastroj(powazny).

forma(requiem):-
            tempo(umiarkowane),
            wokal(tak),
            epoka(romantyzm),
			nastroj(smutny).

forma(preludia):-
            tempo(wolne),
            wokal(nie),
            epoka(romantyzm),
			nastroj(wesoly).

forma(bagatela):-
            tempo(wolne),
            wokal(nie),
            epoka(romantyzm),
			nastroj(powazny).   

forma(operetka):-
            tempo(wolne),
            wokal(tak),
            epoka(romantyzm),
			nastroj(wesoly).

forma(bourree):-
            tempo(wolne),
            wokal(tak),
            epoka(romantyzm),
			nastroj(powazny).

forma(piesn-trzyglosowa):-
            tempo(wolne),
            wokal(tak),
            epoka(romantyzm),
			nastroj(smutny).
%Baza pytan
pytanie(tempo):-
            write('Jakie chcesz tempo?'), nl.

pytanie(wokal):-
            write('Chcesz, by wystepowaly partie glosowe?'), nl.

pytanie(epoka):-
            write('Jaka epoka ?'), nl.

pytanie(nastroj):-
            write('Jaki ma byc nastroj, charakter utworu ?'), nl.

%Baza odpowiedzi
odp(wolne):-
            write('Wolne (format: wolne.).').

odp(umiarkowane):-
            write('Moze byc umiarkowane (format: umiarkowane.).').

odp(szybkie):-
            write('Tempo niech bedzie szybkie (format: szybkie.).').

odp(tak):-
            write('Niech jest wokal (format: tak.).').

odp(nie):-
            write('Nie ma wokalu (format: nie.).').

odp(barok):-
            write('Epoka? barok (format: barok.).').

odp(klasycyzm):-
            write('Niech bedzie klasycyzm (format: klasycyzm.).').

odp(romantyzm):-
            write('A to moze romantyzm (format: romantyzm.).').

odp(smutny):-
            write('Bardziej smutny (format: smutny.).').

odp(powazny):-
            write('Tylko powazny (format: powazny.).').

odp(wesoly):-
            write('Wesoly (format: wesoly.).').

%Funkcje wypisujace dla poszczegolnych gatunkow
wypisz(concerto-grosso):-
            write('concerto-grosso'), nl.

wypisz(violin-concerto):-
            write('violin-concerto'), nl.

wypisz(msza):-
            write('msza'), nl.

wypisz(pasja):-
            write('pasja'), nl.

wypisz(fuga):-
            write('fuga'), nl.

wypisz(sonata):-
            write('sonata'), nl.

wypisz(oratorium):-
            write('oratorium'), nl.

wypisz(utwor-religijny):-
            write('utwor-religijny'), nl.

wypisz(opera):-
            write('opera'), nl.

wypisz(koncert-klarnetowy):-
            write('koncert-klarnetowy'), nl.

wypisz(serenada):-
            write('serenada'), nl.

wypisz(symfonia):-
            write('symfonia'), nl.

wypisz(piano-concerto):-
            write('piano-concerto'), nl.

wypisz(sinfonia-concertante):-
            write('sintofnia-concertante'), nl.

wypisz(piano-quintet):-
            write('piano-quintet'), nl.

wypisz(piano-trio):-
            write('piano-trio'), nl.

wypisz(preludia):-
            write('preludia'), nl.

wypisz(mazurki):-
            write('mazurki'), nl.

wypisz(nokturny):-
            write('nokturny'), nl.

wypisz(polonezy):-
            write('polonezy'), nl.
            
wypisz(aria):-
            write('aria'), nl. 
            
wypisz(choral):-
            write('choral'), nl. 

wypisz(arietta):-
            write('arietta'), nl.  

wypisz(motet):-
            write('motet'), nl.  

wypisz(kantata):-
            write('kantata'), nl. 

wypisz(suita):-
            write('suita'), nl. 

wypisz(fugato):-
            write('fugato'), nl. 

wypisz(partita):-
            write('partita'), nl. 

wypisz(toccata):-
            write('toccata'), nl.

wypisz(kantyk):-
            write('kantyk'), nl.       

wypisz(psalm):-
            write('psalm'), nl.  

wypisz(lament):-
            write('lament'), nl.  

wypisz(chiesa):-
            write('chiesa'), nl.  

wypisz(fantasia):-
            write('fantasia'), nl.  

wypisz(gigue):-
            write('gigue'), nl. 

wypisz(ballada):-
            write('ballada'), nl. 

wypisz(smutny):-
            write('smutny'), nl. 

wypisz(jota):-
            write('jota'), nl.  

wypisz(marsz):-
            write('marsz'), nl.              

wypisz(recytatyw):-
            write('recytatyw'), nl. 
            
wypisz(dumka):-
            write('dumka'), nl. 

wypisz(barkarola):-
            write('barkarola'), nl. 
wypisz(kolysanka):-
            write('kolysanka'), nl.    
wypisz(rapsodia):-
            write('rapsodia'), nl.  
wypisz(hymn):-
            write('hymn'), nl.
wypisz(ricercar):-
            write('ricercar'), nl.            
wypisz(sonatina):-
            write('sonatina'), nl.               
wypisz(wodewil):-
            write('wodewil'), nl.             
wypisz(elegia):-
            write('elegia'), nl.   
wypisz(requiem):-
            write('requiem'), nl.             
wypisz(preludia):-
            write('preludia'), nl.          
wypisz(bagatela):-
            write('bagatela'), nl.    
wypisz(operetka):-
            write('operetka'), nl. 
wypisz(bourree):-
            write('bourree'), nl. 
wypisz(piesn-trzyglosowa):-
            write('piesn-trzyglosowa'), nl.             
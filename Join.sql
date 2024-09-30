Inner, Left/Right, Full, Self JOIN

1. Chcemy uzyskać informacje na temat numer wypożyczenia oraz marki oraz modelu wypożyczonego samochodu 
ROZIWĄZANIE: SELECT
    dane_wypozyczen.id_wypozyczenia,
    samochody.marka,
    samochody.model
FROM
    dane_wypozyczen
INNER JOIN samochody ON samochody.id_samochodu = dane_wypozyczen.id_samochodu
ORDER BY
    dane_wypozyczen.id_wypozyczenia

2. Do polecenia pierwszego, dodajemy daty 
ROZWIĄZANIE: 
SELECT
    dane_wypozyczen.id_wypozyczenia,
    samochody.marka,
    samochody.model,
    wypozyczenia.data_wyp
FROM
    dane_wypozyczen
INNER JOIN samochody ON samochody.id_samochodu = dane_wypozyczen.id_samochodu
INNER JOIN wypozyczenia ON dane_wypozyczen.id_wypozyczenia = wypozyczenia.id_wypozyczenia
ORDER BY
    dane_wypozyczen.id_wypozyczenia;

3. Do zadania Drugiego dodać dane klientów 
ROZIWĄZANIE: SELECT
    dane_wypozyczen.id_wypozyczenia,
    samochody.marka,
    samochody.model,
    wypozyczenia.data_wyp,
    klienci.imie_klienta,
    klienci.nazwisko_klienta
FROM
    dane_wypozyczen
INNER JOIN samochody ON samochody.id_samochodu = dane_wypozyczen.id_samochodu
INNER JOIN wypozyczenia ON dane_wypozyczen.id_wypozyczenia = wypozyczenia.id_wypozyczenia
INNER JOIN klienci ON klienci.id_klienta = wypozyczenia.id_klienta
ORDER BY
    dane_wypozyczen.id_wypozyczenia;

4. Do zadania czwartego, dodać imie i nazwisko pracownika, któy obsługiwał klienta 
ROZWIĄZANIE: 
SELECT
    dane_wypozyczen.id_wypozyczenia,
    samochody.marka,
    samochody.model,
    wypozyczenia.data_wyp,
    klienci.imie_klienta,
    klienci.nazwisko_klienta,
    pracownicy.imie_pracownika,
    pracownicy.nazwisko_pracownika
FROM
    dane_wypozyczen
INNER JOIN samochody ON samochody.id_samochodu = dane_wypozyczen.id_samochodu
INNER JOIN wypozyczenia ON dane_wypozyczen.id_wypozyczenia = wypozyczenia.id_wypozyczenia
INNER JOIN klienci ON klienci.id_klienta = wypozyczenia.id_klienta
INNER JOIN pracownicy ON pracownicy.id_pracownika = wypozyczenia.id_pracownika
ORDER BY
    dane_wypozyczen.id_wypozyczenia;

5. Informacja o dacie wypożyczenia, oraz jakie auto zostało wypożczyone tego dnia 
ROZWIĄZANIE: 
SELECT
    wypozyczenia.data_wyp,
    samochody.model,
    samochody.marka
FROM
    wypozyczenia
INNER JOIN dane_wypozyczen ON wypozyczenia.id_wypozyczenia = dane_wypozyczen.id_wypozyczenia
INNER JOIN samochody ON samochody.id_samochodu = dane_wypozyczen.id_samochodu
ORDER BY
    wypozyczenia.data_wyp

6. Napiszmy zapytanie, które zwróci nam nazwiska pracowników oraz id wypożyczeń jakie obsługiwali
ROZWIAŻANIE: 
SELECT
    pracownicy.imie_pracownika,
    pracownicy.nazwisko_pracownika,
    wypozyczenia.id_wypozyczenia
FROM
    pracownicy
LEFT JOIN wypozyczenia ON pracownicy.id_pracownika = wypozyczenia.id_pracownika;

7. 



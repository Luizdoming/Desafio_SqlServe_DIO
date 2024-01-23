USE Filmes
Go

-- SELECT * FROM Filmes

-- 1° Desafio -> Buscar Nome e Ano dos Filmes
SELECT Nome, Ano FROM Filmes;


-- 2° Desafio -> Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano 
FROM Filmes
ORDER BY Ano ASC

-- 3° -> Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- 4° -> Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao 
FROM Filmes
WHERE Ano = 1997
ORDER BY Duracao ASC

-- 5° -> Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao 
FROM Filmes
WHERE Ano > 2000
ORDER BY Ano DESC

-- 6° -> Buscar os filmes com a duracao maior que 100 e menor que 150,
-- ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150 
ORDER BY Duracao ASC

-- 7° -> Buscar a quantidade de filmes lançadas no ano,
-- agrupando por ano, ordenando pela quantidade em ordem decrescente

SELECT Ano, COUNT(Ano) 'Quantidade'
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade desc

-- 8° -> Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
-- SELECT * FROM Atores
SELECT PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M'

-- 9° -> Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome,
-- e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC

-- 10° -> Buscar o nome do filme e o gênero
-- SELECT * FROM FilmesGenero
SELECT Nome, Genero
FROM FilmesGenero
INNER JOIN  Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

-- 11° -> Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT Nome, Genero
FROM FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON  FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'

-- 12° -> Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
-- SELECT * FROM ElencoFilme
SELECT Nome, PrimeiroNome, UltimoNome, Papel
FROM ElencoFilme
INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id

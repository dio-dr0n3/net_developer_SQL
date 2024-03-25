-- Seleciona o nome e o ano dos filmes
SELECT Nome, Ano FROM Filmes;

-- Seleciona todos os campos dos filmes e ordena pelo ano
SELECT * FROM Filmes ORDER BY Ano;

-- Seleciona todos os campos dos filmes onde o nome é 'De Volta para o Futuro'
SELECT * FROM Filmes WHERE Nome = 'De Volta para o Futuro';

-- Seleciona todos os campos dos filmes do ano de 1997
SELECT * FROM Filmes WHERE Ano = 1997;

-- Seleciona todos os campos dos filmes com ano superior a 2000
SELECT * FROM Filmes WHERE Ano > 2000;

-- Seleciona todos os campos dos filmes com duração entre 100 e 150 minutos e ordena pela duração
SELECT * FROM Filmes WHERE (Duracao > 100) AND (Duracao < 150) ORDER BY Duracao;

-- Seleciona o ano e a contagem de filmes por ano, agrupados por ano e ordenados pela quantidade de forma decrescente
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC;

-- Seleciona o primeiro nome e o último nome dos atores do gênero masculino
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M';

-- Seleciona o primeiro nome e o último nome dos atores do gênero feminino e ordena pelo primeiro nome
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

-- Seleciona o nome dos filmes e o gênero, juntando as tabelas Filmes, FilmesGenero e Generos
SELECT f.Nome, g.Genero 
FROM Filmes AS f 
INNER JOIN FilmesGenero AS fg ON fg.IdFilme = f.Id 
INNER JOIN Generos AS g ON fg.IdGenero = g.Id;

-- Seleciona o nome dos filmes e o gênero 'Mistério', juntando as tabelas Filmes, FilmesGenero e Generos
SELECT f.Nome, g.Genero 
FROM Filmes AS f 
INNER JOIN FilmesGenero AS fg ON fg.IdFilme = f.Id 
INNER JOIN Generos AS g ON fg.IdGenero = g.Id 
WHERE g.Genero = 'Mistério';

-- Seleciona o nome dos filmes, o primeiro nome, o último nome e o papel dos atores, juntando as tabelas Filmes, ElencoFilme e Atores
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, e.Papel 
FROM Filmes AS f 
INNER JOIN ElencoFilme AS e ON f.Id = e.IdFilme 
INNER JOIN Atores AS a ON e.IdAtor = a.Id;

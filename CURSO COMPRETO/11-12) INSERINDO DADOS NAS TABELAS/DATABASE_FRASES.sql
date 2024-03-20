-- Inserindo autores
INSERT INTO autores (nome) VALUES
('Machado de Assis'),
('Clarice Lispector'),
('Guimarães Rosa'),
('Lima Barreto'),
('Carlos Drummond de Andrade'),
('Graciliano Ramos'),
('Érico Veríssimo'),
('Rachel de Queiroz'),
('Jorge Amado'),
('Cecília Meireles');

-- Inserindo categorias
INSERT INTO categorias (categoria) VALUES
('Romance'),
('Conto'),
('Poesia'),
('Crônica'),
('Ficção Científica'),
('Fantasia'),
('Biografia'),
('Drama'),
('Terror'),
('Ensaios');

-- Inserindo frases associadas a autores e categorias
INSERT INTO frases (frase, autor_id, categoria_id) VALUES
('As pessoas não morrem, ficam encantadas.', 1, 1),
('A liberdade é pouco. O que eu desejo ainda não tem nome.', 2, 3),
('Viver é negócio muito perigoso.', 3, 1),
('As grandes almas têm vontades; as fracas, apenas desejos.', 4, 7),
('No meio do caminho tinha uma pedra.', 5, 3),
('O que mais preocupa não é o grito dos violentos, dos corruptos, dos desonestos, dos sem-caráter, dos sem-ética. O que mais preocupa é o silêncio dos bons.', 6, 7),
('A vida é feita de escolhas. Quando você dá um passo à frente, inevitavelmente alguma coisa fica para trás.', 7, 7),
('Nunca digas que esqueceste um amor diga apenas que consegue falar nele sem chorar.', 8, 4),
('O mundo é como um espelho que devolve a cada pessoa o reflexo de seus próprios pensamentos.', 9, 7),
('O destino dos homens é feito de momentos felizes, toda a vida os tem, mas não de épocas felizes.', 10, 1);

-- Inserindo usuários
INSERT INTO usuarios (email, nome, senha) VALUES
('usuario1@example.com', 'Maria', 'senha123'),
('usuario2@example.com', 'José', 'senha456'),
('usuario3@example.com', 'Ana', 'senha789'),
('usuario4@example.com', 'Carlos', 'senha101112'),
('usuario5@example.com', 'Juliana', 'senha131415'),
('usuario6@example.com', 'Lucas', 'senha161718'),
('usuario7@example.com', 'Patrícia', 'senha192021'),
('usuario8@example.com', 'Roberto', 'senha222324'),
('usuario9@example.com', 'Fernanda', 'senha252627'),
('usuario10@example.com', 'Gustavo', 'senha282930');

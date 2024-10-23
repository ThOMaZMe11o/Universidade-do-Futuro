create database db_universidade;
use db_universidade;

create table alunos (
id int primary key auto_increment,
name varchar(100) not null,
email varchar(100) not null unique,
curso varchar(100) not null,
date_matricula date not null
);

create table contato (
id int primary key auto_increment,
aluno_id int,
assunto varchar(100) not null,
descricao text not null,
data_contato datetime not null,
foreign key (aluno_id) references alunos(id) on delete cascade
);

insert into alunos (id, name, email, curso, date_matricula) values
(1, 'Ana Silva', 'ana.silva@email.com', 'Fundamentos de UX/UI Design', '2024-01-15'),
(2, 'Bruno Oliveira', 'bruno.oliveira@email.com', 'Fundamentos de UX/UI Design', '2023-03-12'),
(3, 'Carlos Pereira', 'carlos.pereira@email.com', 'Fundamentos de UX/UI Design', '2022-08-20'),
(4, 'Daniela Santos', 'daniela.santos@email.com', 'Fundamentos de UX/UI Design', '2023-02-25'),
(5, 'Eduardo Lima', 'eduardo.lima@email.com', 'Fundamentos de UX/UI Design', '2024-04-10'),
(6, 'Fernanda Costa', 'fernanda.costa@email.com', 'Fundamentos de UX/UI Design', '2023-09-05'),
(7, 'Gabriel Rocha', 'gabriel.rocha@email.com', 'Design de Interface Responsiva', '2022-07-30'),
(8, 'Helena Alves', 'helena.alves@email.com', 'Design de Interface Responsiva', '2024-01-20'),
(9, 'Igor Martins', 'igor.martins@email.com', 'Design de Interface Responsiva', '2023-07-10'),
(10, 'Juliana Ferreira', 'juliana.ferreira@email.com', 'Design de Interface Responsiva', '2022-04-15'),
(11, 'Lucas Mendes', 'lucas.mendes@email.com', 'Design de Interface Responsiva', '2024-01-30'),
(12, 'Mariana Nunes', 'mariana.nunes@email.com', 'Pesquisa e Testes de Usabilidade', '2022-05-22'),
(13, 'Natália Ribeiro', 'natalia.ribeiro@email.com', 'Pesquisa e Testes de Usabilidade', '2023-03-14'),
(14, 'Otávio Martins', 'otavio.martins@email.com', 'Pesquisa e Testes de Usabilidade', '2021-09-18'),
(15, 'Paula Souza', 'paula.souza@email.com', 'Pesquisa e Testes de Usabilidade', '2024-02-12'),
(16, 'Ricardo Santos', 'ricardo.santos@email.com', 'Pesquisa e Testes de Usabilidade', '2021-06-30'),
(17, 'Sofia Cardoso', 'sofia.cardoso@email.com', 'Pesquisa e Testes de Usabilidade', '2023-10-01'),
(18, 'Thiago Almeida', 'thiago.almeida@email.com', 'Design de Interação e Prototipagem', '2024-03-25'),
(19, 'Vanessa Gomes', 'vanessa.gomes@email.com', 'Design de Interação e Prototipagem', '2023-07-12'),
(20, 'Wellington Vieira', 'wellington.vieira@email.com', 'Design de Interação e Prototipagem', '2021-08-28'),
(21, 'Isabela Alves', 'isabela.alves@email.com', 'Design de Interação e Prototipagem', '2023-09-17'),
(22, 'Yasmin Lima', 'yasmin.lima@email.com', 'Design de Interação e Prototipagem', '2024-01-08'),
(23, 'Zé Carlos', 'ze.carlos@email.com', 'Design de Interação e Prototipagem', '2023-05-20');

insert into contato (id, aluno_id, assunto, descricao, data_contato) values
(1, 1, 'Dúvida sobre matrícula', 'Gostaria de saber mais sobre o processo de matrícula.', '2024-10-01 14:30:00'),
(2, 2, 'Informações sobre o curso', 'Preciso de informações sobre as disciplinas do curso de Medicina.', '2023-10-02 15:00:00'),
(3, 3, 'Requerimento de transferência', 'Estou interessado em transferir meu curso para Arquitetura.', '2022-10-03 09:00:00'),
(4, 4, 'Bolsa de estudos', 'Gostaria de informações sobre bolsas de estudo disponíveis.', '2023-10-04 10:15:00'),
(5, 5, 'Problemas com a plataforma', 'Estou tendo dificuldades para acessar a plataforma online.', '2024-10-05 11:45:00'),
(6, 6, 'Pedido de informações sobre estágio', 'Quero saber como posso encontrar um estágio na área de Biomedicina.', '2023-10-06 12:30:00'),
(7, 7, 'Feedback sobre o curso', 'Gostaria de deixar um feedback sobre o curso de Ciências Contábeis.', '2022-10-07 13:00:00'),
(8, 8, 'Solicitação de diploma', 'Estou finalizando meu curso e gostaria de saber como solicitar meu diploma.', '2024-10-08 14:00:00'),
(9, 9, 'Dúvidas sobre o TCC', 'Preciso de orientações sobre como fazer meu TCC.', '2023-10-09 15:00:00'),
(10, 10, 'Mudança de horário', 'Gostaria de solicitar uma mudança no horário das aulas.', '2022-10-10 16:00:00'),
(11, 11, 'Consulta sobre disciplinas', 'Quero saber se posso cursar disciplinas de outro curso.', '2024-10-11 10:00:00'),
(12, 12, 'Problemas financeiros', 'Estou enfrentando problemas financeiros e gostaria de ajuda.', '2022-10-12 11:00:00'),
(13, 13, 'Informações sobre intercâmbio', 'Estou interessado em participar de um intercâmbio.', '2022-10-13 09:30:00'),
(14, 14, 'Aconselhamento acadêmico', 'Preciso de aconselhamento sobre minha grade de disciplinas.', '2021-10-14 12:45:00'),
(15, 15, 'Eventos universitários', 'Gostaria de saber sobre eventos acadêmicos programados.', '2024-10-15 14:20:00'),
(16, 16, 'Apoio psicológico', 'Gostaria de saber sobre os serviços de apoio psicológico.', '2021-10-16 15:10:00'),
(17, 17, 'Atividades extracurriculares', 'Quero informações sobre atividades extracurriculares disponíveis.', '2023-10-17 13:30:00'),
(18, 18, 'Necessidade de revisão de nota', 'Gostaria de solicitar uma revisão de uma nota.', '2024-10-18 11:20:00'),
(19, 19, 'Acesso ao laboratório', 'Preciso de acesso ao laboratório de Design Gráfico.', '2023-10-19 10:50:00'),
(20, 20, 'Transferência de campus', 'Estou pensando em transferir para outro campus.', '2021-10-20 12:10:00'),
(21, 21, 'Dúvidas sobre a grade curricular', 'Quero saber mais sobre a grade curricular do curso de História.', '2023-10-21 14:00:00'),
(22, 22, 'Reclamação sobre professor', 'Quero fazer uma reclamação sobre um professor.', '2024-10-22 15:00:00'),
(23, 23, 'Dúvidas sobre aulas práticas', 'Gostaria de esclarecer algumas dúvidas sobre as aulas práticas.', '2023-10-23 16:30:00');

select * from alunos;
select * from contato;

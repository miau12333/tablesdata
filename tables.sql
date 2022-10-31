CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "name_id" int,
  "email" varchar NOT NULL,
  "password" varchar NOT NULL,
  "age" int
);

CREATE TABLE "post" (
  "id" SERIAL PRIMARY KEY,
  "title" varchar,
  "description" varchar,
  "author_id" int,
  "content" varchar
);

CREATE TABLE "names" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "categories" (
  "id" SERIAL PRIMARY KEY,
  "name_category" varchar
);

CREATE TABLE "comments" (
  "id" SERIAL PRIMARY KEY,
  "author_idCom" int,
  "comment" varchar
);

ALTER TABLE "names" ADD FOREIGN KEY ("name") REFERENCES "users" ("name_id");

ALTER TABLE "post" ADD FOREIGN KEY ("author_id") REFERENCES "names" ("name");

ALTER TABLE "comments" ADD FOREIGN KEY ("author_idCom") REFERENCES "names" ("name");

insert into names  (name) values ('Juan Román'), ('Carla Días');

insert into categories (name_category) values ('Entretenimiento'), ('Salud'), ('Deporte'), ('Musica'), ('Cultura');

insert into comments (author_idCom, comment) values (1, 'lo que sea'), (2, 'lo que sea x2'); 

insert into users (name_id, email , password , age) values 
(1, 'juan@gmail.com', '1760',28),
(2, 'dias@gmail.com', '1929', 30);

insert into post (title, description, author_id, content) values
('dia lluvioso', 'la noche de ayer ha sido el dia más lluvioso de este mes', 1, 'cosas que se pueden hacer es dias lluviosos...'),
('Café', '¿A todos les gusta el café?', 2, 'Muchas personas opinan que ...');


CREATE TABLE distrito AS (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(64) NOT NULL,
	geometria GEOMETRY(Polygon, 4674)	
);

CREATE TABLE setor AS (
	id SERIAL PRIMARY KEY,
	id_distrito INTEGER REFERENCES distrito (id),
	nome VARCHAR(64) NOT NULL,
	geometria GEOMETRY(Polygon, 4674),
	UNIQUE (id_distrito, nome)
);

CREATE TABLE quadra AS (
	id SERIAL PRIMARY KEY,
	id_setor INTEGER REFERENCES setor (id),
	nome VARCHAR(64) NOT NULL,
	geometria GEOMETRY(Polygon, 4674),
	UNIQUE (id_setor, nome)
);

CREATE TABLE face_quadra AS (
	id SERIAL PRIMARY KEY,
	id_quadra INTEGER REFERENCES quadra(id),
	nome VARCHAR(64) NOT NULL,
	geometria GEOMETRY(LineString, 4674),
	UNIQUE (id_quadra, numero)
)

CREATE TABLE lote AS (
	id SERIAL PRIMARY KEY,
	id_face_quadra INTEGER REFERENCES face_quadra (id),
	nome VARCHAR(64) NOT NULL,
	geometria GEOMETRY(Polygon, 4674),
	UNIQUE (id_face_quadra, nome)
);

CREATE TABLE edificacao AS (
	id SERIAL PRIMARY KEY,
	id_lote INTEGER REFERENCES lote (id),
	nome VARCHAR(64) NOT NULL,
	geometria GEOMETRY(Polygon, 4674),
	UNIQUE(id_lote, nome)
);
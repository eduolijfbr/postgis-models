Criando um recorte de uma imagem
=================================

A consulta aqui apresentada é para criar uma nova imagem utilizando dados vetoriais para realizar o "clip" do raster.
A tabela criada contém somente dois campos o rid (serial not null) e o campo rast (type raster).
No trecho da consulta em "st_union(st_clip(a.rast,st_buffer(a.geom,0))) as rast" podemos setar o st_buffer(a.geom,N) 
para fazer uma imagem maior ou menor que o vetor.


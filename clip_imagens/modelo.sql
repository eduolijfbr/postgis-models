drop table if exists recorte;
create table recorte (rid serial not null, rast raster);
with foo as (
		select 
			st_union(st_clip(a.rast,st_buffer(a.geom,0))) as rast
		from 
			(select pol.gid, img.rast, pol.geom from SEU_POLIGONO pol, SUA_IMAGEM img where pol.gid = ID_DO_POLIGONO_DE_SUA_ESCOLHA) a
		where 
			st_intersects(a.rast,a.geom)
		group by a.gid
)
insert into recorte (rast) select * from foo;
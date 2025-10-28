SELECT
    n.id,
    n.titulo,
    n.data_publicacao,
    n.destaque,
    a.nome AS autor,
    c.nome AS categoria
FROM
    noticia n
JOIN
    autor a ON n.id_autor = a.id
JOIN
    categoria c ON n.id_categoria = c.id;

SELECT * FROM noticia;


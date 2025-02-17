<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<?python from turbogears import identity ?>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:py="http://purl.org/kid/ns#"
    py:extends="'../../../../templates/master.kid'">
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" py:replace="''"/>
<title>list</title>
</head>
<body>

<h1><span py:replace="namepl.capitalize()">Objetos</span> del curso <span py:replace="curso.shortrepr()" /></h1>

<table class="list">
    <tr>
        <th>Número</th>
        <th>Enunciado</th>
        <th>Es Grupal?</th>
        <th>Operaciones</th>
    </tr>
    <tr py:for="record in records">
        <td><span py:replace="record.numero">numero</span></td>
        <td><a href="${tg.url('/enunciado/show/%d' % record.enunciado.id)}"><span py:replace="record.enunciado.shortrepr()">enunciado</span></a></td>
        <td><span py:replace="tg.strbool(record.grupal)">grupal</span></td>
        <td>
            <a href="${tg.url('/curso/ejercicio/show/%d' % record.id)}">Ver</a>
            <a href="${tg.url('/curso/ejercicio/instancia/list/%d' % record.id)}">Instancias</a>
            <a href="${tg.url('/enunciado/files/%d' % record.enunciadoID)}">Bajar archivos</a>
            <a py:if="'admin' in identity.current.permissions" href="${tg.url('/curso/ejercicio/edit/%d' % record.id)}">Editar</a>
            <a py:if="'admin' in identity.current.permissions" href="${tg.url('/curso/ejercicio/delete/%d' % record.id)}" onclick="if (confirm('${_(u'Estás seguro? Yo creo que no...')}')) { var f = document.createElement('form'); this.parentNode.appendChild(f); f.method = 'POST'; f.action = this.href; f.submit(); };return false;">Eliminar</a>
        </td>
    </tr>
</table>

<br/>
<a py:if="'admin' in identity.current.permissions" href="${tg.url('/curso/ejercicio/new/%s' % curso.id)}">Agregar</a>
| <a href="${tg.url('/curso')}">Volver a Cursos</a>

<div py:for="page in tg.paginate.pages">
    <a py:if="page != tg.paginate.current_page"
        href="${tg.paginate.get_href(page)}">${page}</a>
    <b py:if="page == tg.paginate.current_page">${page}</b>
</div>

</body>
</html>

<!-- vim: set et sw=4 sts=4 : -->

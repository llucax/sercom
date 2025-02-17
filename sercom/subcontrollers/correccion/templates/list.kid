<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<?python from sercom.model import Grupo, AlumnoInscripto ?>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:py="http://purl.org/kid/ns#"
    py:extends="'../../../templates/master.kid'">
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" py:replace="''"/>
<title>list</title>
</head>
<body>

<h1>Administración de <span py:replace="namepl">Objetos</span></h1>

<div py:replace="form(value=vfilter, options=options, action=tg.url('/correccion/list'), submit_text=_(u'Filtrar'))">Filtros</div>

<table class="list">
    <tr>
				<th>Ejercicio</th>
				<th><span title="Instancia de Entrega">IE</span></th>
        <th>Entregador</th>
        <th>Entregas</th>
        <th>Corrector</th>
        <th>Asignado</th>
        <th>Corregido</th>
				<th>Nota</th>
				<th>Operaciones</th>
    </tr>
    <tr py:for="record in records">
        <td><span py:replace="record.instancia.ejercicio.enunciado.nombre">usuario</span></td>
        <td><span py:replace="record.instancia.shortrepr()">usuario</span></td>
				<td>
					<a py:if="isinstance(record.entregador, Grupo)" href="${tg.url('/grupo/show/%d' % record.entregador.id)}" py:content="record.entregador.shortrepr()">nombre</a>
					<a py:if="isinstance(record.entregador, AlumnoInscripto)" href="${tg.url('/alumno/show/%d' % record.entregador.alumno.id)}" py:content="record.entregador.shortrepr()">nombre</a>
				</td>
				<td align="center"><a href="${tg.url('/correccion/entregas/%d' % record.id)}" py:content="len(record.entregas)">entregas realizadas</a></td>
				<td><a href="${tg.url('/docente/show/%d' % record.corrector.docente.id)}" py:content="record.corrector.shortrepr()">corrector</a></td>
        <td><span py:replace="record.asignado">fecha asignado</span></td>
        <td><span py:replace="record.corregido">fecha corregido</span></td>
        <td align="right"><span py:replace="record.nota">nota</span></td>
				<td>
					<a href="${tg.url('/correccion/show/%d' % record.id)}">Ver</a>
					<a py:if="not record.corregido and not record.nota" href="${tg.url('/correccion/edit/%d' % record.id)}">Corregir</a>
					<a py:if="record.corregido or record.nota" href="${tg.url('/correccion/edit/%d' % record.id)}">Editar</a>
				</td>
    </tr>
</table>

<div py:for="page in tg.paginate.pages">
    <a py:if="page != tg.paginate.current_page"
        href="${tg.paginate.get_href(page)}">${page}</a>
    <b py:if="page == tg.paginate.current_page">${page}</b>
</div>

</body>
</html>

<!-- vim: set et sw=4 sts=4 : -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.JavaBeans"%>
<%@ page import="java.util.ArrayList"%>
<%
	@ SuppressWarnings ("unchecked")
	ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("contatos");
%>
<%--
ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("contatos");
for (int i = 0; i < lista.size(); i++) {
	out.println(lista.get(i).getIdcon());
	out.println(lista.get(i).getNome());
	out.println(lista.get(i).getFone());
	out.println(lista.get(i).getEmail());
}
--%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Agenda De Contatos</title>
<link rel="icon" href="imagens/phone.png">
<link rel="stylesheet" href="style.css">
</head>
	<body>
	<h1>Agenda De Contatos</h1>
	<a href="novo.html" class="Botao1">Novo Contato</a>
	<a href="report" class="Botao2">Relatório</a>
	<table id = "tabela">
		<thead>
			<tr>
				<th>ID</th>
				<th>NOME</th>
				<th>FONE</th>
				<th>EMAIL</th>
				<th>OPÇÕES</th>
			</tr>
		</thead>
		<tbody>
		<% for (int i = 0; i < lista.size(); i++) { %>
			<tr>
				<td><%=lista.get(i).getIdcon() %></td>
				<td><%=lista.get(i).getNome() %></td>
				<td><%=lista.get(i).getFone() %></td>
				<td><%=lista.get(i).getEmail() %></td>
				<td><a href="select?idcon=<%=lista.get(i).getIdcon() %>"class="Botao1">Editar</a>
				<a href="javascript: confirmar(<%=lista.get(i).getIdcon() %>, '<%=lista.get(i).getNome() %>')"class="Botao2">Excluir</a>
				
				</td>
			</tr>
		<%}%>
		</tbody>
	</table>
	<script src ="scripts/confirmador.js"></script>
</body>
</html>
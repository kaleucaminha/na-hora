<%@page import="model.Comentario"%>
<%@page import="dao.ComentariosDAO"%>
<%@page import="java.util.ArrayList"%>

<%
//C�digo java
ArrayList<Comentario> lista = ComentariosDAO.lista( request.getParameter("id") );
for( Comentario c : lista){
    out.print( c.getHTMLBlock() );
}
%>


<%@page import="util.UploadFile"%>
<%
   UploadFile carregador = new UploadFile(pageContext, request, "fotos");
   if(carregador.save()){
       out.print("Sucesso. Arquivo carregado na pasta indicada com o nome: "+carregador.getNomeFinal());
   } else {
       out.println("Bug..veja a sa�da do glassfish no netbeans");
   }
%>
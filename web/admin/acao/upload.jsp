
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="util.MultipartForm"%>
<%
    //Cria objeto da classe usada para ler formul�rios Multipart
    MultipartForm form = new MultipartForm(pageContext, request);

    /** DEBUG - Exibe todos os campos do formul�rio, informando se � texto ou arquivo **/
    /** Comente este c�digo quando finalizar seu trabalho **/

    //Passo 1 - Pega todos os itens do formul�rio
    List<FileItem> items = form.getItems();

    //Passo 2 - Percorre cada item, exibindo o nome do campo
    for(FileItem f : items){
        out.println(f.getFieldName());

        //Passo 3 - Exibe se � campo de formul�rio ou arquivo
        if(f.isFormField()){
            out.println(" - � campo de formul�rio");
            out.println("<br />Valor = "+f.getString());
        } else {
            out.println(" - provavelmente � arquivo");
            //O "getString" de campos do tipo arquvo retornam o bin�rio do arquivo. Experimente se quiser..
            //out.println("<br />Bin�rio = "+f.getString());
        }
        
        out.println("<br /><br />");
    }
    /** FIM DEBUG **/

    //Salva Arquivo do campo com nome "file" na pasta fotos.
    File arquivoSalvo = form.saveFile("file", "fotos");
    if(arquivoSalvo != null){
        out.print("<br />Arquivo "+arquivoSalvo.getPath()+" carregado com sucesso");
    } else {
        out.print("<br />Ops..ocorreu algum erro neste upload do arquivo 1");
        out.print("<br />Um dos erros mais comuns � colocar como destino uma pasta que n�o existe.");
        out.print("<br />O arquivo tamb�m pode ser menor ou maior que o m�ximo permitido.");
    }

    //Salva Arquivo do campo com nome "file2" na pasta csv.
    File arquivoSalvo2 = form.saveFile("file2", "csv");
    if(arquivoSalvo2 != null){
        out.print("<br />Arquivo "+arquivoSalvo2.getPath()+" carregado com sucesso");
    } else {
        out.print("<br />Ops..ocorreu algum erro neste upload do arquivo 2");
        out.print("<br />Um dos erros mais comuns � colocar como destino uma pasta que n�o existe.");
        out.print("<br />O arquivo tamb�m pode ser menor ou maior que o m�ximo permitido.");
    }

    String texto = form.getValue("texto");
    out.print("<br />Texto: "+texto);

/*
   if(carregador.save()){
       out.print("Sucesso. Arquivo carregado na pasta indicada com o nome: "+carregador.getNomeFinal());
   } else {
       out.println("Bug..veja a sa�da do glassfish no netbeans");
   }
 */
%>
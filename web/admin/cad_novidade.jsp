
<%@page import="util.Util"%>
<%
Util.vericaLogin( session, response );
%>
<!DOCTYPE html>
<html lang="en">
  
  <jsp:include page="includes/head.jsp" />

  <body>

    <div class="container">

        <jsp:include page="includes/bloco_topo.jsp" />

        <div class="row">

            <jsp:include page="includes/bloco_menu.jsp" />

             <div class="span9">
                 <h2>Cadastro de Novidade</h2>

                 <form class="form-horizontal well" action="acao/cad_novidade.jsp" method="POST">
                    <fieldset>

                      <div class="control-group">
                        <label class="control-label" for="titulo">
                            T�tulo
                        </label>
                          
                        <div class="controls">
                          <input type="text" class="input-xlarge" id="titulo" name="titulo">
                        </div>
                      </div>

                      <div class="control-group">
                        <label class="control-label" for="resumo">
                            Resumo
                        </label>
                        <div class="controls">
                          <input type="text" class="input-xlarge" id="resumo" name="resumo">
                        </div>
                      </div>

                      <div class="control-group">
                        <label class="control-label" for="texto">
                            Texto
                        </label>
                        <div class="controls">
                          <textarea class="input-xlarge" id="texto" name="texto" rows="8"></textarea>
                        </div>
                      </div>

                        <div class="control-group">
                        <label class="control-label" for="link">
                            Link
                        </label>
                        <div class="controls">
                          <input type="text" class="input-xlarge" id="link" name="link">
                          <p class="help-block">Ex: http://www.google.com.br</p>
                        </div>
                      </div>

                      <div class="control-group">
                        <label class="control-label" for="categoria">
                            Categoria
                        </label>
                        <div class="controls">
                            <select name="categoria">
                                <option value="1">Programa��o OO</option>
                                <option value="2">Banco de Dados</option>
                                <option value="3">TCC</option>
                                <option value="4">Administrativo</option>                                
                            </select>
                        </div>
                      </div>
                        
                      <div class="form-actions">
                        <button type="submit" class="btn btn-primary">Cadastrar</button>
                      </div>

                    </fieldset>
                  </form>
             </div>
        </div>

    </div>
    
    <jsp:include page="includes/javascript.jsp" />
  </body>
</html>

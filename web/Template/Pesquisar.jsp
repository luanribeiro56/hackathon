<%@page import="util.StormData"%>
<%@page import="modelo.Ocorrencia"%>
<%@page import="dao.OcorrenciaDAO"%>
<%@page import="java.util.List"%>
<%@include file="cabecalho.jsp"%>

<%
    OcorrenciaDAO dao = new OcorrenciaDAO();
    List<Ocorrencia> lista = dao.listar();
%>



<!--main content start-->
<section id="main-content">
    <section class="wrapper">
        <!--overview start-->
        <div class="row">
            <div class="col-lg-12">
                <h5 class="page-header"> Aqui você pode procurar por ocorrências através dos principais filtros.</h5>
            </div>
        </div>


        <form>
            <!-- PESQUISARs -->
            <div class="form-group ">
                <label for="bo" class="control-label col-lg"></label>
                <div class="col-lg-10">
                    <select class="form-control" id="select" name="txtSelect" type="text" required />
                    <option name="filtro" value="">Escolha seu filtro</option>
                    <option name="filtrob" value="bairro">Bairro</option>
                    <option name="filtrod" value="data">Data</option>
                    <option name="filtron" value="natureza">Natureza</option>
                    <option name="filtrobo" value="bo">Número de registro de ocorrência</option>
                </div>
            </div>
            <div class="form-group ">

                <div class="col-lg-10">
                    <label for="bo" class="control-label col-lg"></label>
                    <input class="form-control" id="txtFiltro" name="txtFiltro" type="text" required />
                </div>
            </div>
            <br/><br/>
            <%
                if (request.getParameter("txtSelect") == "bairro") {
                    lista = dao.listarbairro("txtFiltro");
                } else if (request.getParameter("txtSelect") == "data") {
                    lista = dao.listardata("txtFiltro");
                } else if (request.getParameter("txtSelect") == "natureza") {
                    lista = dao.listarnatureza("txtFiltro");
                } else if (request.getParameter("txtSelect") == "bo") {
                    lista = dao.listarbo("txtFiltro");
                }
            %>
            <div class="form-group">
                <div class="col-lg-offset-2 col-lg-10">
                    <button class="btn btn-primary" href="Pesquisar.jsp" type="submit" >Pesquisar</button>                  
                </div>
            </div>
        </form>
    </section>
    <div class="text-right">
        <div class="credits">


            <div class="col-lg-9 col-md-12">
                <div class="panel panel-default">

                    <div class="panel-body">
                        <table class="table bootstrap-datatable countries">
                            <thead>
                                <tr>

                                    <th>Data</th>
                                    <th>Bairro</th>
                                    <th>Natureza</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%for (Ocorrencia item : lista) {


                                %>    

                                <tr>
                                    <th><%=StormData.formata(item.getOdata())%></th>
                                    <th><%=item.getObairro()%></th>
                                    <th><%=item.getOnatureza()%></th>


                                    <%}%>    
                            </tbody>
                        </table>
                    </div>

                </div>

            </div>


<%@page import="modelo.Ocorrencia"%>
<%@page import="dao.OcorrenciaDAO"%>
<%@page import="util.StormData"%>
<%@include file="cabecalho.jsp"%>
<%
    Ocorrencia oc = new Ocorrencia();
    OcorrenciaDAO dao = new OcorrenciaDAO();
    String msg = "";
    String classe = "";
    if (request.getParameter("txtNatureza") != null && request.getParameter("txtBO") != null && request.getParameter("txtViolencia") != null && request.getParameter("txtTurno") != null && request.getParameter("txtBairro") != null && request.getParameter("txtData") != null) {
        oc.setOnatureza(request.getParameter("txtNatureza"));
        oc.setOarma(Boolean.parseBoolean(request.getParameter("txtArma")));
        oc.setOviolencia(Boolean.parseBoolean(request.getParameter("txtViolencia")));
        oc.setObairro(request.getParameter("txtBairro"));
        oc.setObo(Long.parseLong(request.getParameter("txtBO")));
        oc.setOturno(request.getParameter("txtTurno"));
        oc.setOdata(StormData.formata(request.getParameter("txtData")));

        Boolean resultado = dao.incluir(oc);
        if (resultado) {
            msg = "Registro cadastrado com sucesso";
            classe = "alert-success";
        } else {
            msg = "N�o foi poss�vel cadastrar";
            classe = "alert-danger";
        }
    }
%>
<section id="main-content">
    <section class="wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-files-o"></i> Registre sua ocorr�ncia</h3>
            </div>
        </div>
        <!-- Form validations -->
        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                    </header>
                    <div class="panel-body">
                        <div class="form">
                            <form class="form-horizontal" method="post" action="">


                                <div class="form-group ">
                                    <label for="bo" class="control-label col-lg-2">N�mero de registro <span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <input class="form-control"  name="txtBO"  type="text" required />
                                    </div>
                                </div>


                                <div class="form-group ">
                                    <label for="data" class="control-label col-lg-2">Data da ocorr�ncia <span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <input class="form-control "  type="date" name="txtData" required />
                                    </div>
                                </div>


                                <div class="form-group ">
                                    <label for="turno" class="control-label col-lg-2">Turno <span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <select class="form-control"  name="txtTurno" type="text" required />
                                        <option name="turno" value="">Selecione o turno</option>
                                        <option name="turno" value="Manh�">Manh�</option>
                                        <option name="turno" value="Tarde">Tarde</option>
                                        <option name="turno" value="Noite">Noite</option>
                                        </select>
                                    </div>
                                </div>    


                                <div class="form-group ">
                                    <label for="bairro" class="control-label col-lg-2">Bairro <span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <select class="form-control"  name="txtBairro" type="text" required />
                                        <option name="bairro" value="">Selecione o bairro</option>
                                        <option name="bairro" value="Aeroporto">Aeroporto</option>
                                        <option name="bairro" value="Arvorezinha">Arvorezinha</option>
                                        <option name="bairro" value="Candiota">Candiota</option>
                                        <option name="bairro" value="Cantegril">Cantegril</option>
                                        <option name="bairro" value="Carlos Su��">Carlos Su��</option>
                                        <option name="bairro" value="Castro Alves">Castro Alves</option>
                                        <option name="bairro" value="Centro">Centro</option>
                                        <option name="bairro" value="Ch�cara Para�so">Ch�cara Para�so</option>
                                        <option name="bairro" value="Dolores">Dolores</option>
                                        <option name="bairro" value="Estrela D'alva">Estrela D'alva</option>
                                        <option name="bairro" value="F�nix">F�nix</option>
                                        <option name="bairro" value="Floresta">Floresta</option>
                                        <option name="bairro" value="Get�lio Vargas">Get�lio Vargas</option>
                                        <option name="bairro" value="Habitar Brasil">Habitar Brasil</option>
                                        <option name="bairro" value="Hidr�ulica">Hidr�ulica</option>
                                        <option name="bairro" value="Ibag�">Ibag�</option>
                                        <option name="bairro" value="Industrial">Industrial</option>
                                        <option name="bairro" value="Ipiranga">Ipiranga</option>
                                        <option name="bairro" value="Isac Teitel Roit">Isac Teitel Roit</option>
                                        <option name="bairro" value="Ivo Ferronato">Ivo Ferronato</option>
                                        <option name="bairro" value="Ivone">Ivone</option>
                                        <option name="bairro" value="J Cruzes">J Cruzes</option>
                                        <option name="bairro" value="Jardim do Castelo">Jardim do Castelo</option>
                                        <option name="bairro" value="Jardim Monte Carlo">Jardim Monte Carlo</option>
                                        <option name="bairro" value="Laranjeiras">Laranjeiras</option>
                                        <option name="bairro" value="Madezatti">Madezatti</option>
                                        <option name="bairro" value="Malafaia">Malafaia</option>
                                        <option name="bairro" value="Mascarenhas de Moraes">Mascarenhas de Moraes</option>
                                        <option name="bairro" value="Menino Deus">Menino Deus</option>
                                        <option name="bairro" value="Mingote Paiva">Mingote Paiva</option>
                                        <option name="bairro" value="Morgado Rosa">Morgado Rosa</option>
                                        <option name="bairro" value="Narciso Su��">Narciso Su��</option>
                                        <option name="bairro" value="Nova Esperan�a">Nova Esperan�a</option>
                                        <option name="bairro" value="Parque Mar�lia">Parque Mar�lia</option>
                                        <option name="bairro" value="Passo do Pr�ncipe">Passo do Pr�ncipe</option>
                                        <option name="bairro" value="Passo das Pedras">Passo das Pedras</option>
                                        <option name="bairro" value="Pedras Brancas">Pedras Brancas</option>
                                        <option name="bairro" value="Popular">Popular</option>
                                        <option name="bairro" value="Prado Velho">Prado Velho</option>
                                        <option name="bairro" value="Santa Carmen">Santa Carmen</option>
                                        <option name="bairro" value="Santa Cec�lia">Santa Cec�lia</option>
                                        <option name="bairro" value="Santa Tecla">Santa Tecla</option>
                                        <option name="bairro" value="Santa Tereza">Santa Tereza</option>
                                        <option name="bairro" value="S�o Bernardo">S�o Bernardo</option>
                                        <option name="bairro" value="S�o Jorge">S�o Jorge</option>
                                        <option name="bairro" value="S�o Judas">S�o Judas</option>
                                        <option name="bairro" value="S�o Martins">S�o Martins</option>
                                        <option name="bairro" value="Sub�rbios">Sub�rbios</option>
                                        <option name="bairro" value="Tarum�">Tarum�</option>
                                        <option name="bairro" value="Tiaraju">Tiaraju</option>
                                        <option name="bairro" value="Uni�o">Uni�o</option>
                                        <option name="bairro" value="Vicente G Sob">Vicente G Sob</option>
                                        <option name="bairro" value="Vila Anjos">Vila Anjos</option>
                                        <option name="bairro" value="Vila Ga�cha">Vila Ga�cha</option>
                                        <option name="bairro" value="Vila dos Sargentos">Vila dos Sargentos</option>
                                        <option name="bairro" value="Zona Rural">Zona Rural</option>
                                        </select>
                                    </div>
                                </div>


                                <div class="form-group ">
                                    <label for="natureza" class="control-label col-lg-2">Natureza <span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <select class="form-control"  name="txtNatureza"  type="text" required />
                                        <option name="natureza" value="">Selecione a natureza do crime</option>
                                        <option name="natureza" value="C�rcere Privado">C�rcere Privado</option>
                                        <option name="natureza" value="Cont�gio Ven�reo">Cont�gio Ven�reo</option>
                                        <option name="natureza" value="Estelionato">Estelionato</option>
                                        <option name="natureza" value="Furto">Furto</option>
                                        <option name="natureza" value="Homic�dio">Homic�dio</option>
                                        <option name="natureza" value="Infantic�dio">Infantic�dio</option>
                                        <option name="natureza" value="Invas�o de domic�lio">Invas�o de domic�lio</option>
                                        <option name="natureza" value="Latroc�nio">Latroc�nio</option>
                                        <option name="natureza" value="Roubo">Roubo</option>

                                        </select>
                                    </div>
                                </div>

                                <div class="form-group ">
                                    <label for="violencia" class="control-label col-lg-2">Viol�ncia <span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <select class="form-control"  name="txtViolencia" type="text" required />
                                        <option name="violencia" value="">Selecione se houve ou n�o viol�ncia</option>   
                                        <option name="violencia" value="1">Sim</option>
                                        <option name="violencia" value="0">N�o</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group ">
                                    <label for="arma" class="control-label col-lg-2">Arma</label>
                                    <div class="col-lg-10">
                                        <select class="form-control"  name="txtArma"  type="text" required />
                                        <option name="arma" value="">Selecione se houve ou n�o uso de armas</option>
                                        <option name="arma" value="1">Houve uso de arma(s)</option>
                                        <option name="arma" value="0">N�o houve uso de arma(s)</option>
                                        </select>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="col-lg-offset-2 col-lg-10">
                                        <button class="btn btn-primary" type="submit" >Salvar ocorr�ncia</button>
                                        
                                        <button class="btn btn-default" type="button" href="Index.jsp">Cancelar</button>
                                    </div>
                                </div>
                            </form>
                        </div>

                    </div>
                </section>
            </div>
        </div>

        </div>
    </section>
</div>
</div>
<!-- page end-->
</section>
</section>
<!--main content end-->
<div class="text-right">
    <div class="credits">
        <!--
          All the links in the footer should remain intact.
          You can delete the links only if you purchased the pro version.
          Licensing information: https://bootstrapmade.com/license/
          Purchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
        -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
    </div>
</div>
</section>
<!-- container section end -->

<!-- javascripts -->
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- nice scroll -->
<script src="js/jquery.scrollTo.min.js"></script>
<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
<!-- jquery validate js -->
<script type="text/javascript" src="js/jquery.validate.min.js"></script>

<!-- custom form validation script for this page-->
<script src="js/form-validation-script.js"></script>
<!--custome script for all page-->
<script src="js/scripts.js"></script>


</body>

</html>
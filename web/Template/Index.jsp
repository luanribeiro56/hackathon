<%@page import="util.StormData"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Ocorrencia"%>
<%@page import="modelo.Ocorrencia"%>
<%@page import="dao.OcorrenciaDAO"%>
<%@include file="cabecalho.jsp"%>%>
<% 
    OcorrenciaDAO dao = new OcorrenciaDAO();
    List<Ocorrencia> lista;
        if(request.getParameter("bo") != null){
            Ocorrencia obj = dao.buscarPorChavePrimaria(Long.parseLong(request.getParameter("bo")));
                if(obj != null){
                    dao.excluir(obj);
                }
        }
        
        lista = dao.listar();
    
%>
    <section id="main-content">
      <section class="wrapper">
        <!--overview start-->
        <div class="row">
          <div class="col-lg-12">
              <h5 class="page-header" align="justify"> De acordo com Atlas da Violência, realizado pelo Instituto de Pesquisa Econômica Aplicada(IPEA)e pelo Fórum Brasileiro de Segurança Púlica, dezenove municípios gaúchos estão entre os mais violentos do país. A cidade de Bagé aparece em 263º de 309 municípios, com o percentual de 3,9 casos para cada 100 mil habitantes.</h5>
            <h3 class="page-header"><i class="fa fa-laptop"></i> Dados da criminalidade em Bagé e no RS</h3>
            
          </div>
        </div>

        <div class="row">
          <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
            <div class="info-box blue-bg">
             
              <div class="count">1.777</div>
              <div class="title">Furtos em 2018 na cidade de Bagé</div>
            </div>
            
          </div>
       

          <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
            <div class="info-box brown-bg">
              
              <div class="count">219</div>
              <div class="title">Roubos em 2018 na cidade de Bagé</div>
            </div>
            
          </div>
          <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
            <div class="info-box dark-bg">
              
              <div class="count">50.000</div>
              <div class="title">Roubos em 2018 no RS</div>
            </div>
            
          </div>
          <div class="col-lg-9 col-md-12">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h2><i class="fa fa-flag-o red"></i><strong>Últimas ocorrências registradas</strong></h2>
                <div class="panel-actions">
                  <a href="Index.jsp" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                  
                </div>
              </div>
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
                      <%
                          for (Ocorrencia item : lista)
                      {
                         // Date data = item.getOdata();
                          //data = StormData.formata(data);
                          
                      %>    
                     
                    <tr>
                      <td><%=StormData.formata(item.getOdata())%></td>
                      <td><%=item.getObairro()%></td>
                      <td><%=item.getOnatureza()%></td>
                      <td>
                        
                    <%}%>    
                  </tbody>
                </table>
              </div>

            </div>

          </div>

        </div>
        </section>
      <div class="text-right">
        <div class="credits">
         
          Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
        </div>
      </div>
    </section>
   
  </section>
  
  <script src="js/jquery.js"></script>
  <script src="js/jquery-ui-1.10.4.min.js"></script>
  <script src="js/jquery-1.8.3.min.js"></script>
  <script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
  <!-- bootstrap -->
  <script src="js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="js/jquery.scrollTo.min.js"></script>
  <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
  <!-- charts scripts -->
  <script src="assets/jquery-knob/js/jquery.knob.js"></script>
  <script src="js/jquery.sparkline.js" type="text/javascript"></script>
  <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
  <script src="js/owl.carousel.js"></script>
  <!-- jQuery full calendar -->
  <<script src="js/fullcalendar.min.js"></script>
    <!-- Full Google Calendar - Calendar -->
    <script src="assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
    <!--script for this page only-->
    <script src="js/calendar-custom.js"></script>
    <script src="js/jquery.rateit.min.js"></script>
    <!-- custom select -->
    <script src="js/jquery.customSelect.min.js"></script>
    <script src="assets/chart-master/Chart.js"></script>

    <!--custome script for all page-->
    <script src="js/scripts.js"></script>
    <!-- custom script for this page-->
    <script src="js/sparkline-chart.js"></script>
    <script src="js/easy-pie-chart.js"></script>
    <script src="js/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="js/jquery-jvectormap-world-mill-en.js"></script>
    <script src="js/xcharts.min.js"></script>
    <script src="js/jquery.autosize.min.js"></script>
    <script src="js/jquery.placeholder.min.js"></script>
    <script src="js/gdp-data.js"></script>
    <script src="js/morris.min.js"></script>
    <script src="js/sparklines.js"></script>
    <script src="js/charts.js"></script>
    <script src="js/jquery.slimscroll.min.js"></script>
    <script>
      //knob
      $(function() {
        $(".knob").knob({
          'draw': function() {
            $(this.i).val(this.cv + '%')
          }
        })
      });

      //carousel
      $(document).ready(function() {
        $("#owl-slider").owlCarousel({
          navigation: true,
          slideSpeed: 300,
          paginationSpeed: 400,
          singleItem: true

        });
      });

      //custom select box

      $(function() {
        $('select.styled').customSelect();
      });

      /* ---------- Map ---------- */
      $(function() {
        $('#map').vectorMap({
          map: 'world_mill_en',
          series: {
            regions: [{
              values: gdpData,
              scale: ['#000', '#000'],
              normalizeFunction: 'polynomial'
            }]
          },
          backgroundColor: '#eef3f7',
          onLabelShow: function(e, el, code) {
            el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
          }
        });
      });
    </script>

</body>

</html>

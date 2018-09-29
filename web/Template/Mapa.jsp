<%@include file="cabecalho.jsp"%>%>
<!DOCTYPE html>
<html>
    <head><div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-laptop"></i>Registros de ocorrências no mapa</h3>
          </div>
        </div>
</head>
    <body>

        <div id="googleMap" style="width:50%;height:400px; margin-left: 200px;"></div>

        <script>
            function myMap() {
                var mapProp = {
                    center: new google.maps.LatLng(-31.3247303,-54.1305151),
                    zoom: 12.25
                };
                var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
                var myCenter = new google.maps.LatLng(-31.2979219, -54.0688094);
                var myCenter1 = new google.maps.LatLng(-31.383359, -54.116907);
                var myCenter2 = new google.maps.LatLng(-31.312522, -54.112818);
                var myCenter3 = new google.maps.LatLng(-31.288320, -54.141929);
                var myCenter4 = new google.maps.LatLng(-31.305617, -54.130724);
                var myCenter5 = new google.maps.LatLng(-31.298429, -54.065040);
                var myCenter6 = new google.maps.LatLng(-31.310747, -54.102638);
                var myCenter7 = new google.maps.LatLng(-31.306907, -54.126534);
                var myCenter8 = new google.maps.LatLng(-31.307980, -54.131482);
                var myCenter9 = new google.maps.LatLng(-31.333601, -54.093361);
                var myCenter10 = new google.maps.LatLng(-31.325546, -54.124338);
                var marker = new google.maps.Marker({position: myCenter});
                var marker1 = new google.maps.Marker({position: myCenter1});
                var marker2 = new google.maps.Marker({position: myCenter2});
                var marker3 = new google.maps.Marker({position: myCenter3});
                var marker4 = new google.maps.Marker({position: myCenter4});
                var marker5 = new google.maps.Marker({position: myCenter5});
                var marker6 = new google.maps.Marker({position: myCenter6});
                var marker7 = new google.maps.Marker({position: myCenter7});
                var marker8 = new google.maps.Marker({position: myCenter8});
                var marker9 = new google.maps.Marker({position: myCenter9});
                var marker10 = new google.maps.Marker({position: myCenter10});
                marker.setMap(map);
                marker1.setMap(map);
                marker2.setMap(map);
                marker3.setMap(map);
                marker4.setMap(map);
                marker5.setMap(map);
                marker6.setMap(map);
                marker7.setMap(map);
                marker8.setMap(map);
                marker9.setMap(map);
                marker10.setMap(map);
            }
        </script>

        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCP5_wDSyuAbxg-G5IYw6GBfsc15dk_UeQ&callback=myMap" ></script> <br/>
        <br/>
        <div>
            <img src="/img/mapa.png" width="200px" height="100px" margin-top="300px"/>
        </div>
    </body>
</html>
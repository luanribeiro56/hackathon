<%@page import="util.StormData"%>
<%@page import="dao.OcorrenciaDAO"%>
<%@page import="modelo.Ocorrencia"%>
<%@include file="../cabecalho.jsp" %>
<%
    Ocorrencia oc = new Ocorrencia();
    OcorrenciaDAO dao = new OcorrenciaDAO();
    String msg = "";
    String classe = "";
    if (request.getParameter("txtNatureza") != null && request.getParameter("txtTipo") != null && request.getParameter("txtBO") != null && request.getParameter("txtViolencia") != null && request.getParameter("txtTurno") != null && request.getParameter("txtBairro") != null && request.getParameter("txtData") != null) {
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
            msg = "Não foi possível cadastrar";
            classe = "alert-danger";
        }
    } 
%>
<%@include file="../rodape.jsp" %>
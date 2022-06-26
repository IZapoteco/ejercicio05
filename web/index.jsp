<%@page import="Beans.Alumno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    Alumno alum[]=new Alumno[10];
    int cont=0;
%>
<!DOCTYPE html> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='https://fonts.googleapis.com/css?family=Rock+Salt' rel='stylesheet' type='text/css'>
       <link href="style.css" rel="stylesheet" type="text/css">
        <title>Ejercicio 05</title>
        
    </head>
    <body>
        <h1>Sistema de Calificaciones</h1>
        <form action="index.jsp" method="POST">
            <table border="0">
            <thead>
                <tr>
                    <th>MATRICULA</th>
                    <th>NOMBRE</th>
                    <th>APELLIDOS</th>
                    <th>DDI</th>
                    <th>DWI</th>
                    <th>ECBD</th>
                    </tr>
            </thead>
            <tbody><tr>
            <td><input type="text" name="tfMatricula"   value=""    size="11" maxlength="11"/></td>
            <td><input type="text" name="tfNombre"      value=""    size="15"               /></td>
            <td><input type="text" name="tfApellidos"   value=""    size="15"               /></td>
            <td><input type="text" name="tfDdi"         value=""    size="2" maxlength="2"/></td>
            <td><input type="text" name="tfDwi"         value=""    size="2" maxlength="2"/></td>
            <td><input type="text" name="tfEcbd"        value=""    size="2" maxlength="2"/></td>
            <td><input type="submit" name="btnRegistra" value="Registrar"                  /></td>
           </tr></tbody></table></form><br>
            
       
        <%  
        if(request.getParameter("btnRegistra")!=null)
        {
          alum[cont]=new Alumno();
          alum[cont].setMatricula(request.getParameter("tfMatricula"));
          alum[cont].setNombre(request.getParameter("tfNombre"));
          alum[cont].setApellidos(request.getParameter("tfApellidos"));
          alum[cont].setDdi(Integer.parseInt(request.getParameter("tfDdi")));
          alum[cont].setDwi(Integer.parseInt(request.getParameter("tfDwi")));
          alum[cont].setEcbd(Integer.parseInt(request.getParameter("tfEcbd")));
          alum[cont].calcularProm();
          cont++;
        }
         %>  
       
        <table border="1" cellspacing="0">
            <thead>
                <tr>
                    <th>MATRICULA</th>
                    <th>NOMBRE DEL ALUMNO</th>
                    <th>DDI</th>
                    <th>DWI</th>
                    <th>ECBD</th>
                    <th>PROM</th>
                </tr>
            </thead>
               
            <tbody>
                <%for(int i=0; i<cont; i++){%>
                <tr>
                    <td><%=alum[i].getMatricula()%></td>
                    <td><%=alum[i].getNombre()%> <%=alum[i].getApellidos()%></td>
                    <td><%=alum[i].getDdi()%></td>
                    <td><%=alum[i].getDwi()%></td>
                    <td><%=alum[i].getEcbd()%></td>
                    <td><%=alum[i].getProm()%></td>
                </tr> 
                <%}%>
            </tbody>
        </table>
        
    </body>
</html>

function SeleccionarPagina(ctrl)
{
    var nPos;
    var oInputs = document.getElementsByTagName("INPUT")
    
    for (nPos=0; nPos < oInputs.length; nPos++)
    {
        var sCampo = oInputs[nPos].id;
        
        if (sCampo != 'chkTodos' && sCampo.substring(0,3) == 'chk')
        {
            if (ctrl.checked)
            {
                document.getElementById(sCampo).checked = true;
            }
            else
            {
                document.getElementById(sCampo).checked = false;
            }
        }
    }
}

function AsignacionMasiva()
{
    var nPos;
    var oInputs = document.getElementsByTagName("INPUT")
    
    if (document.getElementById("cboTipoMotivo").value == "-1")
    {
        return false;
    }
    
    document.getElementById("btnAsignar").disabled = true;
    for (nPos=0; nPos < oInputs.length; nPos++)
    {
        var sCampo = oInputs[nPos].id;
        
        if (sCampo != 'chkTodos' && document.getElementById(sCampo).checked)
        {
            AsignarMotivo(sCampo);
        }
    }
    
    sleep(2000);
    
    document.getElementById("cboTipoMotivo").value = "-1";
    document.getElementById("btnAsignar").disabled = false;
    return true;
}

function AsignarMotivo(NombreCampo)
{
    var sSKU = NombreCampo.toString().substr(3, 7);
    var sFecha = NombreCampo.toString().substr(10,10);
    var sIdMotivo = document.getElementById("cboTipoMotivo").value;
    var sRand = Math.random().toString();
    
    var sURL = "InterfazAjax.aspx?Comando=ASIGNAR_MOTIVO&Fecha=" + sFecha + "&SKU=" + sSKU + "&IdMotivo=" + sIdMotivo + "&rnd=" + sRand;
    var ajax = new XMLHttpRequest();
    
    ajax.open("POST", sURL, true);
    ajax.send(null);
}

function sleep(delay)
{
    var start = new Date().getTime();
    while (new Date().getTime() < start + delay);
}





 function Visualizar()
       {
               var filtro =  gup('FiltrarActivado');
               alert(filtro);
       }
       
       
       
       function MostrarDist(){
        
         
       }
         function irAInicio(){
        location.href="/$safeprojectname$/";
             
       }
       function MostrarPpal(){
       
       
        
       }
       
       
       function bindear(id_tipo_motivo)
       {
           
            alert(id_tipo_motivo);
            //document.getElementById('sltMotivo').value = id_tipo_motivo;
            //document.getElementById('TxtDiaMotivo').value = '3';
       
       }
       
       
       
       function gup( name )
        {
          name = name.replace(/[\[]/,"\\\[").replace(/[\]]/,"\\\]");
          var regexS = "[\\?&]"+name+"=([^&#]*)";
          var regex = new RegExp( regexS );
          var results = regex.exec( window.location.href );
          if( results == null )
            return "";
          else
            return results[1];
        }
       
       
     
        function ValidarRangoDias(ctrl)
        {
               
               var inputfecha = ctrl.value ;
                var dates=inputfecha.split('/');
                var day = dates[0];
                var month = dates[1]-1;
                var year = dates[2];
                var secondDate = new Date(year, month, day);
                
                var oneDay = 24*60*60*1000; // hours*minutes*seconds*milliseconds
               
                var hoy = new Date();
               
                
                var diffDays = Math.abs((hoy.getTime() - secondDate.getTime())/(oneDay));
                
                if (diffDays > 30)
                {
                    alert("La fecha no debe ser mayor a 30 dias ni menor a la fecha actual");
                    ctrl.value = "" ;
                    return false ;
                }else{
                    return true;
                }
               
        }
	
        function ValidarDesdeHasta()
        {
               var ctrlDesde = document.getElementById("txtFechadesde");
               var ctrlHasta = document.getElementById("txtFechahasta");
               
               var inputfecha = ctrlDesde.value ;
                var dates=inputfecha.split('/');
                var day = dates[0];
                var month = dates[1]-1;
                var year = dates[2];
                var secondDate = new Date(year, month, day);
                
                var oneDay = 24*60*60*1000; // hours*minutes*seconds*milliseconds
               
                inputfecha = ctrlHasta.value ;
                dates=inputfecha.split('/');
                day = dates[0];
                month = dates[1]-1;
                year = dates[2];
                var hoy = new Date(year, month, day);
               
                
                var diffDays = (hoy.getTime() - secondDate.getTime())/(oneDay);
                
                if (diffDays < 0)
                {
                    alert("La fecha Desde no puede ser mayor a la fecha Hasta");
                    return false ;
                }else{
                    return true;
                }
               
        }
	

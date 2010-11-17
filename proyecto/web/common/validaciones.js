function blanco(caja,mensaje){
    if(trim(caja.value)==""){
	    caja.value="";
        alert(""+mensaje);
        caja.focus();
       return false;
   }
	else{
        return true;
    }
}

//ojo:funciona con prototype
function blancoJSF(id,mensaje){
    if(trim($F(id))==""){
	$(id).value="";
        alert(""+mensaje);
        $(id).focus();
       return false;
   }else{
        return true;
    }
}


function ltrim(s) {   return s.replace(/^\s+/, "");}
function rtrim(s) {   return s.replace(/\s+$/, "");}
function trim(s) {   return rtrim(ltrim(s));}


function isEmailAddress(theElement){ 
var s = theElement.value; 
var filter=/^[A-Za-z]+.[A-Za-z0-9_]+.[A-Za-z0-9_]*@[A-Za-z0-9_]+\.[A-Za-z0-9_.]+[A-za-z]$/; 
if (s.length == 0 ) return true; 
   if (filter.test(s)){
	   return true; 
   }else{
	   alert("Mail incorrecto. Por favor verifique."); 
	   theElement.focus(); 
	   return false; 
   }	    
} 


function ocultar(id, valor) {
	document.getElementById(id).style.display = valor;
}



function ismaxlength(obj,tamanio){ //Max length de un TextArea
	var mlength=tamanio;
	if (obj.getAttribute && obj.value.length>mlength)
	obj.value=obj.value.substring(0,mlength)
}
/*Uso:
 * <textarea  onkeyup="return ismaxlength(this,30)"></textarea>*/


/* ******************* Funciones que evaluan FECHA  ********************* */
function compararFechaMayor(strFecha,strFechaMayor){
    var fecha1 = strFecha.split("/");
    var fecha2 = strFechaMayor.split("/");	

    var strFecha1 = parseFloat(fecha1[2] + fecha1[1] + fecha1[0]);
    var strFecha2 = parseFloat(fecha2[2] + fecha2[1] + fecha2[0]);

    if (strFecha1 > strFecha2) {
            return false; }
    else { return true; }  
}



//Funcion que validad que la caja sea solo Numeros
function soloNumeros(e){ 
	var key;
	if(window.event){ // IE
		key = e.keyCode;
	}else if(e.which){ // Netscape/Firefox/Opera
		key = e.which;
	}
	if ((key >= 48 && key <= 57) || key==8){ //solo numeros 
	     return true;
	}

	return false;
}


function esFechaValida(cajaFecha){
  if (cajaFecha != undefined && cajaFecha.value != "" ){
      if (!/^\d{2}\/\d{2}\/\d{4}$/.test(cajaFecha.value)){
          alert("Formato de fecha no v\xe1lido (dd/mm/aaaa)");
          cajaFecha.focus();
          return false;
      }
  }
  return true;

}

function dumbmethod(){
	return false;
}


/*
  ---------------------------------------------------------------------
 | COMENTARIO: El programa funciona correctamente pero no creo que sea |
 | la mejor forma de desarrollarlo debido a que contiene varios IF 	   |
 | pero  es la unica forma que se me ocurrio                           |
  --------------------------------------------------------------------- 
  
 */


object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000

	var totalDinero=0
	var totalDeuda=0
	
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { 
		sueldo = nuevoValor
		//dinero = sueldo
	}
	method cobrarSueldo(){
		if(totalDinero>=0 && totalDeuda==0){
			totalDinero+=sueldo
		}
		else{
			totalDeuda-=sueldo
		}
		if(totalDeuda<0){
			totalDinero=-totalDeuda
			totalDeuda=0
		}
	}
	method gastar(dineroGastar){
		if(totalDinero>0){totalDinero-= dineroGastar}
		else{totalDeuda+= dineroGastar}
		if(totalDinero<0){
			totalDeuda-=totalDinero
			totalDinero=0
		}
	}
	method totalDinero(){return totalDinero}
	method totalDeuda(){return totalDeuda}
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var acumulado = 0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	method cobrarSueldo(){acumulado+=self.sueldo()}
	method totalCobrado(){return acumulado}
}

object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA(empleado) {
    dinero -= empleado.sueldo()
    empleado.cobrarSueldo()
}
}

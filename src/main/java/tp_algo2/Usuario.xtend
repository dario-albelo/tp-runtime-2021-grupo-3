package tp_algo2

import org.eclipse.xtend.lib.annotations.Accessors
import java.time.LocalDate
import java.time.Period

@Accessors
class Usuario {
	
	String nombreYApellido
	String username
	var LocalDate fechaDeNacimiento
	
	new(String nombreYApellido, String username, LocalDate fechaDeNacimiento){
		this.nombreYApellido = nombreYApellido
		this.username = username
		this.fechaDeNacimiento = fechaDeNacimiento
	}
	
	new(){}
	
	def int getEdad(){
		Period.between(fechaDeNacimiento, LocalDate.now).years
		
	}
	
	def int frecuenciaCardiacaMaxima() {
		return 220 - this.edad
	}
	
}
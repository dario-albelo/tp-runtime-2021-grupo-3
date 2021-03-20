package tp_algo2

import org.eclipse.xtend.lib.annotations.Accessors
import java.time.LocalDate

@Accessors
class Usuario {
	
	String nombreYApellido
	String username
	public var LocalDate fechaDeNacimiento
	int edad
	
	new(String nombreYApellido, String username, LocalDate fechaDeNacimiento){
		this.nombreYApellido = nombreYApellido
		this.username = username
		this.fechaDeNacimiento = fechaDeNacimiento
	}
	
	new(){}
	
	def int calcularEdad(){
		val LocalDate hoy = LocalDate.now
		edad = hoy.year - fechaDeNacimiento.year
		return edad
	}
	
	def int frecuenciaCardiacaMaxima() {
		return 220 - this.calcularEdad
	}
	
}
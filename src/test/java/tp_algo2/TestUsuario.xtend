package tp_algo2

import tp_algo2.Usuario
import org.junit.jupiter.api.DisplayName
import org.junit.jupiter.api.Test
import java.time.LocalDate
import static org.junit.jupiter.api.Assertions.assertEquals

@DisplayName("Dada una persona")
class TestUsuario {
	
	@DisplayName("El calculo de la edad es correcta")
	@Test
	def void usuarioConEdadCorrecta(){
		//Arrange
		val usuario = new Usuario =>[
			fechaDeNacimiento = LocalDate.now.minusYears(31)
			
		]
		//Assert
		assertEquals(31, usuario.getEdad)
	}
	
	@DisplayName("Su frecuencia cardiaca maxima es correcta")
	@Test
	def void usuarioConFrecuenciaCardiacaMaximaCorrecta(){
		//Arrange
		val usuario = new Usuario =>[
			fechaDeNacimiento = LocalDate.now.minusYears(30)
		]
		//Act
		usuario.getEdad
		
		//Assert
		assertEquals(190, usuario.frecuenciaCardiacaMaxima)
		
	}
}
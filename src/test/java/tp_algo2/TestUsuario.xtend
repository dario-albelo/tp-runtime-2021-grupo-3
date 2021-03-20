package tp_algo2

import tp_algo2.Usuario
import org.junit.jupiter.api.DisplayName
import org.junit.jupiter.api.Test
import java.time.LocalDate
import java.time.Month
import static org.junit.jupiter.api.Assertions.assertEquals

@DisplayName("Dada una persona")
class TestUsuario {
	
	@DisplayName("El calculo de la edad es correcta")
	@Test
	def void usuarioConEdadCorrecta(){
		//arrange
		val usuario = new Usuario =>[
			fechaDeNacimiento = LocalDate.of(1990, Month.JUNE, 27)
			
		]
		
		assertEquals(31, usuario.calcularEdad)
	}
}
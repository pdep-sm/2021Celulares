/**
 * Se pide representar con objetos a personas que hablan entre sí por celulares.
 * Juliana tiene un Samsung S21, y Catalina tiene un iPhone.
 * El Samsung S21 pierde 0,25 "puntos" de batería por cada llamada, y el iPhone pierde 0,1% 
 * de la duración de cada llamada en batería. Ambos celulares tienen 5 "puntos" de batería como máximo.
 * Implementar a Juliana, Catalina, el Samsung S21 de Juliana y el iPhone de Catalina en Wollok y hacer 
 * pruebas en donde Juliana y Catalina se hagan llamadas telefónicas de distintas duraciones.

1- Conocer la cantidad de batería de cada celular.
2- Saber si un celular está apagado (si está sin batería).
3- Recargar un celular (que vuelva a tener su batería completa).
4- Saber si Juliana tiene el celular apagado; saber si Catalina tiene el celular apagado.

 */

object juliana {
	var celular = samsungS21
	
	method llamarA(persona, duracion) {
		celular.llamarDurante(duracion)
		persona.recibirLlamada(duracion)
	}
	
	method recibirLlamada(duracion) {
		celular.llamarDurante(duracion)
	}
	
	method celular(nuevoCelular) {
		celular = nuevoCelular
	}
	
	method estaApagado() = celular.estaApagado()
}

object catalina {
	var celular = iPhone
	
	method llamarA(persona, duracion) {
		celular.llamarDurante(duracion)
		persona.recibirLlamada(duracion)
	}
	
	method recibirLlamada(duracion) {
		celular.llamarDurante(duracion)
	}
	
	method celular(nuevoCelular) {
		celular = nuevoCelular
	}
	
	method estaApagado() = celular.estaApagado()
}

object samsungS21 {
	var bateria = 3
	
	method bateria() {
		return bateria
	}
	
	method bateria(nuevaBateria) {
		bateria = nuevaBateria
	}
	
	method cargar() {
		bateria = 5
	}
	
	method estaApagado() = bateria == 0
	
	method llamarDurante(duracion) {
		bateria -= 0.25
		bateria = bateria.max(0)
	}
}

object iPhone {
	var bateria = 2
	
	method bateria() = bateria
	
	method bateria(nuevaBateria) {
		bateria = nuevaBateria
	}
	
	method cargar() {
		bateria = 5
	}
	
	method estaApagado() = bateria == 0
	
	method llamarDurante(duracion) {
		bateria = 0.max(bateria - duracion * 0.001)
	}	
}

object pepe {}
=begin
**********************************************************
* Autores: 
       Teno González Dos Santos
       Albano José Yanes Reyes
* Fecha: 23/10/2013
* Asignatura: Lenguejes y Paradigmas de Programación
* Tercero de Grado en Ingeniería Informática
* Universidad de la Laguna
*
* Practica 07: Realice las modificaciones oportunas 
*   sobre la Practica 06 para contemplar el uso del 
*   módulo Comparable. Ademas La clase se ha de 
*   compilar con la herramienta Travis de 
*   integración continua
***********************************************************
=end

class Matriz
	attr_reader :matriz, :filas, :columnas
	def initialize

		#inicializamos las variables
		@matriz = []
		
		#inicializamos la matriz por teclado
		print "Inserte numero de filas (y columnas): "
		while(	(@filas = gets.to_i) < 1)
			print "Error, intentelo de nuevo: "
		end
		
		@columnas = @filas
		
		#comprobamos que los datos de entradas sean numericos
		raise unless filas.is_a?(Numeric)
		raise unless columnas.is_a?(Numeric)
		
		puts "Elementos de la matriz"
		asignar_matriz_teclado(@matriz, @filas)
		mostrar(@matriz)
		
		
	end
	
	def asignar_matriz_teclado(a,filas)
		i = 0
		while( i < filas ) 
			j = 0
			fila = []
			while(j < filas)
				print "Inserte elemento ", i,",", j, ": "
				fila << gets.to_f
				j += 1
			end
			a << fila
			i += 1
		end
	end

	def mostrar(a)
		i = 0
		while (i < a.length)
			j = 0
			while (j < a.length)
				print " ", a[i][j], " "
				j += 1
			end
			print "\n"
			i += 1
		end
	end
	
end

m = Matriz.new
	

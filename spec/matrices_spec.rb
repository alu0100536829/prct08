require "./lib/matrices.rb"

describe Matriz do
	before :each do
		@m1 = Matriz.new(3)
		@m2 = Matriz.new(3)
    end
    
    describe "# Almacenamiento del numero de filas y columnas" do
    	it "Se almacena el numero de filas" do
      		@m1.filas.should eq(3)
   		end
   		
   		it "Se almacena el numero de columnas" do
			@m2.columnas.should eq(3)
		end
   	end

   describe " # Operadores aritmeticos. " do
      it " # Se deben poder sumar matrices" do
        (@m1 + @m2).to_s.should eq("[[2, 4, 6], [8, 10, 12], [14, 16, 18]]")
      end
          
      it " # Se deben poder restar matrices" do
        (@m1 - @m2).to_s.should eq("[[0, 0, 0], [0, 0, 0], [0, 0, 0]]")
      end
          
      it " # Se deben poder multiplicar matrices" do
        (@m1 * @m2).to_s.should eq("[[30, 36, 42], [66, 81, 96], [102, 126, 150]]")
      end
          
    end
   	

end
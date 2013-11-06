require "./lib/matrices.rb"

describe Matriz do
	before :each do
		@m1 = Matriz.new(3)
		@m2 = Fraccion.new(3)
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
        (@m1 + @m2).to_s.should == "2\t4\t\n6\t8\t\n"
      end
          
      it " # Se deben poder restar matrices" do
        (@m1 - @m2).to_s.should == "0\t0\t\n0\t0\t\n"
      end
          
      it " # Se deben poder multiplicar matrices" do
        (@m1 * @m3).to_s.should == "9\t12\t15\t\n19\t26\t33\t\n"
        (@m1 * 2).to_s.should == "2\t4\t\n6\t8\t\n"
      end
          
    end
   	

end

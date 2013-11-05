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
   	

end

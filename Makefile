all:Mathematic.png LinearAlgebra.png Probability.png
Mathematic.png: mathRelation.dot
	dot -Tpng mathRelation.dot -o Mathematic.png
LinearAlgebra.png: ./LinearAlgebra/LinearAlgebra.dot
	dot -Tpng ./LinearAlgebra/LinearAlgebra.dot -o LinearAlgebra.png
Probability.png: ./Probability/probability.dot ./Probability/random_variables.dot
	dot -Tpng ./Probability/probability.dot -o Probability.png
	dot -Tpng ./Probability/random_variables.dot -o random_variables.png
clean:
	rm Mathematic.png LinearAlgebra.png Probability.png

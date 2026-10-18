programa
{
	
	funcao inicio()
	{
	real x, y, z
	caracter novotriangulo
	faca
	{
		escreva("Classificador de Triângulos simples", "\n", "\n")
		escreva("Digite o comprimento de cada lado do triângulo em número: ", "\n", "\n")

		escreva("Informe vetor X: ")
		leia(x)
		
		escreva("Informe vetor y: ")
		leia(y)
	
		escreva("Informe vetor z: ")
		leia(z)
		escreva("\n")

		se (x <= 0 ou y <= 0 ou z <= 0)
		{
			escreva("Parâmetros do triângulo inválidos", "\n")
		}
		senao se (x + y > z e x + z > y e y + z > x)
		{
			se(x == y e y == z)
			{
				escreva("Triângulo Equilátero", "\n")
			}
			senao se (x == y ou x == z ou y == z)
			{
				escreva("Triângulo Isósceles", "\n")
			}
			senao
			{
				escreva("Triângulo Escaleno", "\n")
			}
		}
		senao
		{
			escreva("Triângulo inválido", "\n")
		}
		
		escreva("\n", "Verificar um novo triângulo? [s/n]", "\n")
		leia(novotriangulo)
	
		limpa()
	}
		enquanto(novotriangulo == 's')
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 371; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
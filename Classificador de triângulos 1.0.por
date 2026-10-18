programa
{
    funcao inicio()
    {
        caracter opcao

        faca
        {
            escreva("Classificador de Triângulos 1.0", "\n")
            escreva("Digite os três lados do triângulo:", "\n")

            real x, y, z
            escreva("Informe o lado X: ")
            leia(x)
            escreva("Informe o lado Y: ")
            leia(y)
            escreva("Informe o lado Z: ")
            leia(z)

            se (x <= 0 ou y <= 0 ou z <= 0)
            {
                escreva("Valores inválidos. Os lados devem ser positivos.", "\n")
            }
            senao se (x + y > z e x + z > y e y + z > x)
            {
                // Triângulo válido
                se (x == y e y == z)
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
                escreva("Triângulo Inválido", "\n")
            }

            escreva("\nDeseja verificar outro triângulo? [s/n]: ")
            leia(opcao)

            limpa()

        } enquanto (opcao == 's')
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1343; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
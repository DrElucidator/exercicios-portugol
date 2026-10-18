programa
{
    inclua biblioteca Matematica
    funcao inicio()
    {
        real primeironumero, segundonumero, resultado = 0.0
        caracter deveContinuar, OperacaoSelecionada
        
        faca
        {
            escreva("Calculadora Simples 1.0", "\n")

            escreva("para realizar as operações, digite: ", "\n", 
                    "1 para adição", "\n", 
                    "2 para subtração", "\n", 
                    "3 para multiplicação", "\n", 
                    "4 para divisão", "\n")

            leia(OperacaoSelecionada)

            se (OperacaoSelecionada == '1' ou OperacaoSelecionada == '2' ou OperacaoSelecionada == '3' ou OperacaoSelecionada == '4')
            {
                escreva("informe o 1° número: ")
                leia(primeironumero)
                escreva("informe o 2° número: ")
                leia(segundonumero)
    
                cadeia tipoOperacao = "nenhum"
    
                se (OperacaoSelecionada == '1')
                {
                    resultado = primeironumero + segundonumero
                    tipoOperacao = "soma"
                }
                senao se (OperacaoSelecionada == '2')
                {
                    resultado = primeironumero - segundonumero
                    tipoOperacao = "subtração"
                }
                senao se (OperacaoSelecionada == '3')
                {
                    resultado = primeironumero * segundonumero
                    tipoOperacao = "multiplicação"
                }
                senao se (OperacaoSelecionada == '4')
                {
                    se (segundonumero == 0)
                    {
                        escreva ("\n", "Divisão por zero", "\n")
                    }
                    senao
                    {
                        resultado = primeironumero / segundonumero
                        tipoOperacao = "divisão"
                    }
                }

                // arredondar apenas se houve operação válida
                se (tipoOperacao != "nenhum")
                {
                    real resultadoArredondado = Matematica.arredondar(resultado, 2)
                    escreva("o resultado da " + tipoOperacao + " é: " + resultadoArredondado, "\n")
                }
            }
            senao
            {
                escreva ("Operação inválida", "\n")
            }
        
            escreva("Deseja realizar outra operação? [s/n]")
            leia(deveContinuar)

            limpa()

        } enquanto (deveContinuar == 's')
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2574; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
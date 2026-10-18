programa
{
    inclua biblioteca Util
    inclua biblioteca Matematica

    funcao inicio()
    {
        escreva("=== JOGO DE CORRIDA DE DADOS ===", "\n")

        inteiro percurso = 30
        inteiro posJogador = 0
        inteiro posComputador = 0
        cadeia resposta

        escreva("Iniciar jogo? [s/n] ")
        leia(resposta)

        se (resposta == "s")
        {
            enquanto (posJogador < percurso e posComputador < percurso)
            {
                // turno do jogador
                escreva("\nPressione ENTER para rolar o dado...")
                leia(resposta)
                inteiro dadoJogador = Util.sorteia(1, 6)
                escreva("Você rolou: ", dadoJogador, "\n")
                posJogador = posJogador + dadoJogador

                // eventos especiais jogador
                se (dadoJogador == 6)
                {
                    escreva("Você ganhou uma rodada extra!\n")
                    inteiro extra = Util.sorteia(1, 6)
                    escreva("Rolagem extra: ", extra, "\n")
                    posJogador = posJogador + extra
                }
                se (posJogador == 5 ou posJogador == 10 ou posJogador == 15)
                {
                    escreva("Bônus! Avance +3\n")
                    posJogador = posJogador + 3
                }
                se (posJogador == 7 ou posJogador == 13 ou posJogador == 20)
                {
                    escreva("Penalidade! Volte -2\n")
                    posJogador = posJogador - 2
                }

                escreva("Sua posição: ", posJogador, "\n")

                se (posJogador >= percurso)
                {
                    escreva("\nVocê venceu!")
                    pare
                }

                // turno do computador
                inteiro dadoComputador = Util.sorteia(1, 6)
                escreva("\nComputador rolou: ", dadoComputador, "\n")
                posComputador = posComputador + dadoComputador

                // eventos especiais computador
                se (dadoComputador == 6)
                {
                    escreva("Computador ganhou uma rodada extra!\n")
                    inteiro extraC = Util.sorteia(1, 6)
                    escreva("Rolagem extra: ", extraC, "\n")
                    posComputador = posComputador + extraC
                }
                se (posComputador == 5 ou posComputador == 10 ou posComputador == 15)
                {
                    escreva("Computador ganhou bônus +3\n")
                    posComputador = posComputador + 3
                }
                se (posComputador == 7 ou posComputador == 13 ou posComputador == 20)
                {
                    escreva("Computador sofreu penalidade -2\n")
                    posComputador = posComputador - 2
                }

                escreva("Posição do computador: ", posComputador, "\n")

                se (posComputador >= percurso)
                {
                    escreva("\nComputador venceu!")
                    pare
                }
            }
        }
        senao
        {
            escreva("Jogo encerrado.")
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 733; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
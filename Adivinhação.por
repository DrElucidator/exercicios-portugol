/*
	
*/
programa
{
	inclua biblioteca Matematica
	inclua biblioteca Util
	
	funcao inicio()
	{
		escreva("Sejam bem vindos ao nosso jogo de adivinhação!", "\n")
		
		logico ganhou = falso

		inteiro contadorTentativas = 0
		
		inteiro numeroMaximoTentativas = 5
		
		inteiro numeroSecreto = Util.sorteia(1, 20)
		
		real pontuacao = 10.0
		
		escreva("Escolha o nível de dificuldade:", "\n", "Fácil = 1   ", "\t", "Médio = 2  ", "\t", "Difícil = 3 ", "\n")

		inteiro nivel
		leia(nivel)
		
		escolha(nivel)
		{
			caso 1:
			numeroMaximoTentativas = 10
			pare
			caso 2:
			numeroMaximoTentativas = 5
			pare
			caso 3:
			numeroMaximoTentativas = 3
			pare
			caso contrario:
			numeroMaximoTentativas = 0
		}
		
		enquanto(ganhou == falso e contadorTentativas < numeroMaximoTentativas)
		{
			escreva("Qual é o teu palpite?", "\n")
			inteiro palpite
			leia(palpite)
			contadorTentativas ++

			escreva("\n", "Tentativa ", contadorTentativas, " de ", numeroMaximoTentativas, "\n", "\n")
	
			se (palpite == numeroSecreto)
			{
				escreva("\n", "PARABÉNS!! Acertou em cheio!", "\n")
				escreva("\n", "Pontuação: ", pontuacao)
				ganhou = verdadeiro
			}
			
			senao
			{
				real diferenca = palpite - numeroSecreto
				diferenca = Matematica.valor_absoluto(diferenca)
				/*
				Lembrete de estrutura funcional:
				Alternativa1 para resolução acima:
					se (diferenca < 0)
					{
					diferenca = diferenca * -1
					}
				Alternativa2 para resolução acima:
					real desconto = - diferenca / 2
				*/
				real desconto = diferenca / 2
				
				pontuacao = (pontuacao - desconto)
				
				se(palpite > numeroSecreto)
				{
					escreva("não foi dessa vez, tente novamente, mas não tão alto.", "\n")
				}
				senao
				{
					escreva("não foi dessa vez, tente novamente, mas experimente buscar novos patamares.", "\n")
				}
			}
			escreva("\n", "------------------------------", "\n", "\n")
		}
		se (ganhou == falso)
		{
			escreva("GAME OVER!", "\n")
			escreva("O número secreto era: ", numeroSecreto, "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 0; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numeroSecreto, 19, 10, 13}-{pontuacao, 21, 7, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
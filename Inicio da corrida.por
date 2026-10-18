/*
	A pista é representada por uma linha numérica (ex.: de 0 a 30). 
	O jogador e o computador começam na posição 0. 
	O jogador rola o dado pressionando uma tecla (ex.: Enter). 
	O computador rola o dado automaticamente no seu turno. 
*/

programa
{
	inclua biblioteca Util
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		escreva("DADINHOS", "\n", "\n")

		inteiro percurso = 30
		inteiro posP1 = 0
		inteiro posCom = 0
		caracter resposta
		//dado
		inteiro rolagem = (6)
		rolagem = Util.sorteia(1, 6)
		escreva("O número sorteado foi: " + rolagem)

		se(rolagem > 0 ou percurso <= 30)
		{
			posP1 = posP1 + rolagem
		}
		senao se(percurso <= 30)
		{
			escreva("Você venceu!")
		}
		senao
		{
			escreva("Pressione ENTER para rolar o dado")
			leia(resposta)
			
			/*caracter comeco
			escreva("Inciar jogo? [s/n]")
			leia(comeco)*/
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 832; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {rolagem, 22, 10, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
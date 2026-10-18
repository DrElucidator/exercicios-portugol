programa
{
	inclua biblioteca Tipos
	inclua biblioteca Texto
	inclua biblioteca Util
	
	funcao inicio()
	{		
		cadeia frutaSelecionada = ""
		sortearFruta(frutaSelecionada)

		inteiro numCaracteres = Texto.numero_caracteres(frutaSelecionada)
	
		cadeia palavraSecreta[15]

		para(inteiro i = 0; i < numCaracteres; i++)
		{
			caracter letra = Texto.obter_caracter(frutaSelecionada, i)
			palavraSecreta[i] = normalizar(Tipos.caracter_para_cadeia(letra))
			//palavraSecreta[i] = Tipos.caracter_para_cadeia(letra)
		}

		cadeia letrasCorretas[15]
		para(inteiro i = 0; i < numCaracteres; i++)
		{
			letrasCorretas[i] = "_"
		}
		
		logico venceu = falso
		inteiro numErros = 0
		const inteiro numMax = 3
		
		enquanto(venceu == falso e numErros < numMax)
		{

		exibirCabecalho()

		exibirAcertos(numCaracteres, letrasCorretas)
		
		exibirErros(numErros)

		cadeia palpite = obterPalpite()
		palpite = normalizar(palpite)

		limpa()
	
		logico letraEncontrada = falso
			
		para(inteiro i = 0; i < numCaracteres; i++)
		{
			se (palpite == palavraSecreta[i])
			{
				letrasCorretas[i] = palpite
				letraEncontrada = verdadeiro
				}
			}
			se(letraEncontrada == falso)
			{
				numErros++
			}
			venceu = vereditoResultado(numCaracteres, letrasCorretas)
		}
		se(venceu == verdadeiro)
			exibirMsgVitoria()
			
		senao se(numErros >= numMax)
			exibirMsgDerrota(numCaracteres, palavraSecreta)
	
	}

	funcao vazio exibirCabecalho()
	{
		escreva("Jogo da Forca", "\n", "\n")
	}

	funcao cadeia obterPalpite()
	{
		escreva("Qual é o seu chute?", "\n")
		cadeia palpite
		leia(palpite)

		retorne palpite
	}

	funcao vazio exibirErros(inteiro numErros)
	{
		escreva("Erros: ", numErros, "\n")
	}

	funcao logico vereditoResultado(inteiro numCaracteres, cadeia letrasCorretas[])
	{
			logico venceu = verdadeiro
			para(inteiro i = 0; i < numCaracteres; i++)
			{
				se(letrasCorretas[i] == "_")
				{
					venceu = falso
				}
			}
			retorne venceu 
	}
	
	funcao vazio exibirAcertos(inteiro numCaracteres, cadeia letrasCorretas[])
	{
		para(inteiro j = 0; j < numCaracteres; j++)
			{
				escreva(letrasCorretas[j])
			}
		escreva("\n", "\n")
	}

	funcao vazio exibirMsgDerrota(inteiro numCaracteres, cadeia palavraSecreta[])
	{
			escreva("Você perdeu! Tente novamente", "\n", "\n")

			cadeia respostaEscrita = ""
	
			para(inteiro i = 0; i < numCaracteres; i++)
			{
				cadeia l = palavraSecreta[i]
				respostaEscrita += l
			}
			escreva("A palavra era: ", respostaEscrita, "\n")
	}

	funcao vazio exibirMsgVitoria()
	{
		escreva("PARABÉNS, você venceu!", "\n", "\n")
	}

	funcao cadeia sortearFruta(cadeia &fruta)
	{
		cadeia frutas[] = {"maçã", "banana", "uva", "melancia", "laranja", "abacaxi", "mamão", "pera", "pêssego", "ameixa", "cereja", "morango", "framboesa", "amora", "limão", "tangerina", "maracujá", "kiwi", "goiaba", "caju", "jabuticaba", "pitanga", "acerola", "graviola", "figo", "romã", "carambola", "jaca", "cupuaçu", "açaí"}
		fruta = frutas[Util.sorteia(0, 29)]

		retorne fruta
	}

	funcao cadeia normalizar(cadeia entrada)
	{
	    cadeia c = Texto.caixa_alta(entrada)
	
	    c = Texto.substituir(c, "Á", "A")
	    c = Texto.substituir(c, "À", "A")
	    c = Texto.substituir(c, "Â", "A")
	    c = Texto.substituir(c, "Ã", "A")
	    c = Texto.substituir(c, "É", "E")
	    c = Texto.substituir(c, "Ê", "E")
	    c = Texto.substituir(c, "Í", "I")
	    c = Texto.substituir(c, "Ó", "O")
	    c = Texto.substituir(c, "Ô", "O")
	    c = Texto.substituir(c, "Õ", "O")
	    c = Texto.substituir(c, "Ú", "U")
	    c = Texto.substituir(c, "Ç", "C")
	
	    retorne c
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3411; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {frutaSelecionada, 9, 9, 16}-{numCaracteres, 12, 10, 13}-{palavraSecreta, 14, 9, 14}-{numCaracteres, 103, 36, 13}-{letrasCorretas, 103, 58, 14}-{palavraSecreta, 112, 61, 14}-{respostaEscrita, 116, 10, 15};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
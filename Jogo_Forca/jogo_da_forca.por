programa{
    inclua biblioteca Util --> u
    inclua biblioteca Texto --> t
    inclua biblioteca Graficos --> g
    inclua biblioteca Sons --> s

    // Variáveis globais para as imagens
    inteiro imagemForca[7]
    inteiro somAcerto, somErro
    
    funcao inicio(){
        // Inicializa o modo gráfico
        g.iniciar_modo_grafico(verdadeiro)
        g.definir_dimensoes_janela(1200, 1000)
        g.definir_titulo_janela("Jogo da Forca")
        
        // Carrega as imagens dos estágios da forca
        carregarImagens()
        
        // Carrega os sons
        carregarSons()
        
        // Lista de palavras possíveis
        cadeia listaPalavras[3] = {"amor", "pinguim", "dormir"}
        
        // Matriz de dicas (3 dicas para cada palavra)
        cadeia dicas[3][3] = {
            {"É um sentimento de afeto", "Pode estar relacionada à duas pessoas apaixonadas, a familia, amigos, etc", "Pode ser a primeira vista"},
            {"É um animal que gosta do frio", "Ele se alimenta de peixes", "Quando a femêa bota o ovo, o macho é quem o choca e ela que vai caçar"},
            {"É um verbo(ação)", "Está relacionado ao quarto", "Você pode ter bons sonhos ou pesadelos"}
        }
        
        // Sorteia um índice entre 0 e (tamanho - 1)
        inteiro indiceSorteado = u.sorteia(0, 2)

        // Define a palavra secreta e as dicas dela
        cadeia palavraSecreta = listaPalavras[indiceSorteado]
        
        cadeia letrasTentadas = ""
        caracter palavraOculta[50] 
        inteiro erros = 0
        inteiro maxErros = 6
        logico jogoTerminou = falso
        inteiro tamanhoPalavra
        inteiro indiceDica = 0 // controla qual dica será mostrada

        // Obtém tamanho e transforma para maiúsculas
        tamanhoPalavra = t.numero_caracteres(palavraSecreta)
        palavraSecreta = t.caixa_alta(palavraSecreta)

        // Preenche palavra oculta com traços
        para (inteiro i = 0; i < tamanhoPalavra; i++){
            palavraOculta[i] = '_'
        }

        // Loop do jogo
        enquanto (nao jogoTerminou){
            desenharTela(erros, palavraOculta, tamanhoPalavra, letrasTentadas, dicas, indiceSorteado, indiceDica)
            
            cadeia letraDigitada
            escreva("Digite uma letra: ")
            leia(letraDigitada)
            letraDigitada = t.caixa_alta(letraDigitada)

            se(t.numero_caracteres(letraDigitada) != 1){
                escreva("\nEntrada inválida. Digite apenas UMA letra.\n")
                u.aguarde(1500)
                limpa()
                
            }

            caracter charDigitado = t.obter_caracter(letraDigitada, 0)
            se (letraJaFoiTentada(letrasTentadas, charDigitado)) {
                escreva("\nVocê já tentou esta letra. Tente outra.\n")
                u.aguarde(1500)
                limpa()
                
            }

            letrasTentadas += letraDigitada
            logico acertouLetra = falso

            para (inteiro i = 0; i < tamanhoPalavra; i++) {
                se (t.obter_caracter(palavraSecreta, i) == charDigitado) {
                    palavraOculta[i] = charDigitado
                    acertouLetra = verdadeiro
                }
            }

            se(acertouLetra) {
                // Toca som de acerto
                s.carregar_som("som_acerto.wav")
                escreva("\nParabéns! A letra '", charDigitado, "' está na palavra.\n")
                u.aguarde(1500)
            }
            senao {
                erros++
                // Toca som de erro
                s.carregar_som("som_erro.wav")
                escreva("\nQue pena! A letra '", charDigitado, "' não está na palavra.\n")
                
                // Mostra dica correspondente ao número de erros (se existir)
                se(indiceDica < 3) {
                    escreva("Dica ", indiceDica+1, ": ", dicas[indiceSorteado][indiceDica], "\n")
                    indiceDica++
                }
                senao {
                  escreva("Suas dicas acabaram!")
                }

                u.aguarde(2500)
            }

            limpa()

            logico ganhou = verdadeiro
            para (inteiro i = 0; i < tamanhoPalavra; i++){
                se (palavraOculta[i] == '_'){
                    ganhou = falso
                    pare
                }
            }

            se (ganhou) {
                desenharTela(erros, palavraOculta, tamanhoPalavra, letrasTentadas, dicas, indiceSorteado, indiceDica)
                g.definir_cor(g.COR_VERMELHO)
                g.definir_tamanho_texto(24)
                g.desenhar_texto(250, 500, "PARABÉNS! VOCÊ GANHOU!")
                g.renderizar()
                escreva("\nPARABÉNS! Você adivinhou a palavra '", palavraSecreta, "'!\n")
                jogoTerminou = verdadeiro
                u.aguarde(3000)
            } 
            senao se(erros >= maxErros){
                desenharTela(erros, palavraOculta, tamanhoPalavra, letrasTentadas, dicas, indiceSorteado, indiceDica)
                g.definir_cor(g.COR_BRANCO)
                g.definir_tamanho_texto(24)
                g.desenhar_texto(250, 500, "VOCÊ PERDEU!")
                g.definir_tamanho_texto(18)
                g.desenhar_texto(250, 530, "A palavra era: " + palavraSecreta)
                g.renderizar()
                escreva("\nVOCÊ PERDEU! A palavra secreta era '", palavraSecreta, "'.\n")
                jogoTerminou = verdadeiro
                u.aguarde(3000)
            }
        }
        
        // Libera recursos
        liberarRecursos()
        g.encerrar_modo_grafico()
    }

    funcao carregarImagens(){
        // Carrega as imagens dos diferentes estágios da forca
        imagemForca[0] = g.carregar_imagem("estagio_0.png")
        imagemForca[1] = g.carregar_imagem("estagio_1.png")
        imagemForca[2] = g.carregar_imagem("estagio_2.png")
        imagemForca[3] = g.carregar_imagem("estagio_3.png")
        imagemForca[4] = g.carregar_imagem("estagio_4.png")
        imagemForca[5] = g.carregar_imagem("estagio_5.png")
        imagemForca[6] = g.carregar_imagem("estagio_6.png")
        imagemForca[0] = g.redimensionar_imagem(imagemForca[0], 1000, 800, verdadeiro)
        imagemForca[1] = g.redimensionar_imagem(imagemForca[1], 1000, 800, verdadeiro)
        imagemForca[2] = g.redimensionar_imagem(imagemForca[2], 1000, 800, verdadeiro)
        imagemForca[3] = g.redimensionar_imagem(imagemForca[3], 1000, 800, verdadeiro)
        imagemForca[4] = g.redimensionar_imagem(imagemForca[4], 1000, 800, verdadeiro)
        imagemForca[5] = g.redimensionar_imagem(imagemForca[5], 1000, 800, verdadeiro)
	   imagemForca[6] = g.redimensionar_imagem(imagemForca[6], 1000, 800, verdadeiro)
    }
    
    funcao carregarSons(){
        // Carrega os sons de acerto e erro
        somAcerto = s.carregar_som("som_acerto.wav")
        somErro = s.carregar_som("som_erro.wav")
    }
    
    funcao liberarRecursos(){
        // Libera as imagens da memória
        para(inteiro i = 0; i <= 6; i++){
            g.liberar_imagem(imagemForca[i])
        }
        
        // Libera os sons da memória
        s.liberar_som(somAcerto)
        s.liberar_som(somErro)
    }

    funcao desenharTela(inteiro erros, caracter palavraOculta[], inteiro tamanhoPalavra, cadeia letrasTentadas, cadeia dicas[][], inteiro indiceSorteado, inteiro indiceDica){
        // Limpa a tela
        g.definir_cor(g.COR_BRANCO)
        g.limpar()
        
        // Desenha a imagem da forca correspondente ao número de erros
        g.desenhar_imagem(0, 0, imagemForca[erros])
        
        // Desenha o título
        g.definir_cor(g.COR_VERMELHO)
        g.definir_tamanho_texto(30)
        g.desenhar_texto(500, 20, "JOGO DA FORCA")
        
        // Desenha a palavra oculta
        g.definir_cor(g.COR_PRETO)
        g.definir_tamanho_texto(24)
        cadeia palavraExibida = ""
        para (inteiro i = 0; i < tamanhoPalavra; i++){
            palavraExibida += palavraOculta[i] + " "
        }
        g.desenhar_texto(900, 850, "Palavra: " + palavraExibida)
        
        // Desenha as letras tentadas
        g.definir_tamanho_texto(18)
        g.desenhar_texto(900, 890, "Letras tentadas: " + letrasTentadas)
        
        // Desenha o contador de erros
        g.desenhar_texto(900, 930, "Erros: " + erros + " de 6")
        
        // Desenha as dicas já mostradas
        g.definir_cor(g.COR_PRETO)
        g.definir_tamanho_texto(16)
        inteiro yDica = 850
        para(inteiro i = 0; i < indiceDica e i < 3; i++){
            g.desenhar_texto(50, yDica, "Dica " + (i+1) + ": " + dicas[indiceSorteado][i])
            yDica += 25
        }
        
        // Renderiza tudo na tela
        g.renderizar()
    }

    funcao logico letraJaFoiTentada(cadeia letras, caracter letraBuscada) {
        para (inteiro i = 0; i < t.numero_caracteres(letras); i++) {
            se (t.obter_caracter(letras, i) == letraBuscada) {
                retorne verdadeiro
            }
        }
        retorne falso
    }
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7127; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
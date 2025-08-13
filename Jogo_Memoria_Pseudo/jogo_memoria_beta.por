programa {
  inclua biblioteca Graficos --> g
  inclua biblioteca Teclado --> t
  inclua biblioteca Util --> u
  inclua biblioteca Mouse --> m
  inclua biblioteca Sons --> s

  const inteiro LARGURA_JANELA = 900
  const inteiro ALTURA_JANELA = 750
  const inteiro TAMANHO_CARTA_L = 120
  const inteiro TAMANHO_CARTA_A = 150
  const inteiro MARGEM_CARTA = 10
  const inteiro TEMPO_ESPERA = 1000 // Tempo em milissegundos para mostrar cartas não combinadas
  const inteiro NUM_CARTAS = 18

  // IDs das imagens
  inteiro img_card_back
  inteiro img_flower
  inteiro img_mushroom
  inteiro img_star
  inteiro img_1up
      
  inteiro img_coin10
  inteiro img_coin20

  // IDs das imagens por sons
  inteiro cartas_som
  inteiro erros_som
  inteiro vitoria_som
  inteiro resete_som

  // Arrays paralelos para representar as cartas
  inteiro id_tipos[NUM_CARTAS] // Identificador do tipo da carta (1-6)
  logico viradas[NUM_CARTAS] // Indica se a carta está virada para cima
  logico encontradas[NUM_CARTAS] // Indica se a carta já foi encontrada (par combinado)
  inteiro pos_x[NUM_CARTAS]
  inteiro pos_y[NUM_CARTAS]

  // Variáveis de controle do jogo
  inteiro tentativas = 3
  inteiro erros = 0
  inteiro vitorias = 0
  inteiro cartas_viradas_indices[2] // Armazena os índices das cartas viradas (máximo 2)
  inteiro num_cartas_viradas = 0
  inteiro tempo_inicio_espera = 0
  logico aguardando = falso
  logico jogo_ganho = falso

  funcao inicio() {
    g.iniciar_modo_grafico(falso)
    g.definir_dimensoes_janela(LARGURA_JANELA, ALTURA_JANELA)
    g.definir_titulo_janela("Jogo da Memória SMB3")
    g.definir_cor(g.criar_cor(26, 26, 26))

    // Carrega as imagens
    img_card_back = g.carregar_imagem("card_back.png")
    img_flower = g.carregar_imagem("card_flower.png")
    img_mushroom = g.carregar_imagem("card_mushroom.png")
    img_star = g.carregar_imagem("card_star.png")
    img_1up = g.carregar_imagem("card_1up.png")
    img_coin10 = g.carregar_imagem("card_coin10.png")
    img_coin20 = g.carregar_imagem("card_coin20.png")

    img_card_back = g.redimensionar_imagem(img_card_back,TAMANHO_CARTA_L,TAMANHO_CARTA_A,verdadeiro)
    img_flower = g.redimensionar_imagem(img_flower,TAMANHO_CARTA_L,TAMANHO_CARTA_A,verdadeiro)
    img_mushroom = g.redimensionar_imagem(img_mushroom,TAMANHO_CARTA_L,TAMANHO_CARTA_A,verdadeiro)
    img_star = g.redimensionar_imagem(img_star,TAMANHO_CARTA_L,TAMANHO_CARTA_A,verdadeiro)
    img_1up = g.redimensionar_imagem(img_1up,TAMANHO_CARTA_L,TAMANHO_CARTA_A,verdadeiro)
    img_coin10 = g.redimensionar_imagem(img_coin10,TAMANHO_CARTA_L,TAMANHO_CARTA_A,verdadeiro)
    img_coin20 = g.redimensionar_imagem(img_coin20,TAMANHO_CARTA_L,TAMANHO_CARTA_A,verdadeiro)


    cartas_som = s.carregar_som("vira(1).mp3")
    erros_som = s.carregar_som("já tem mais 1 erro.mp3")
    vitoria_som = s.carregar_som("Ganhoou de novo, puxa! vida!.mp3")
    resete_som = s.carregar_som("Espero que tenha uma boa memória!.mp3")

    

    

    embaralhar_cartas()

    // Loop principal do jogo
    enquanto (nao t.tecla_pressionada(t.TECLA_ESC)) {
      // Processa entrada
      processar_entrada()
      
      se (nao jogo_ganho) {
        verificar_clique_carta()
        processar_espera()
      }



      // Limpa a tela
      g.limpar()

      // Desenha todas as cartas
      para (inteiro i = 0; i < NUM_CARTAS; i++) {
        desenhar_carta(i)
      }

      // Desenha interface
      desenhar_interface()

      g.renderizar()
      u.aguarde(50) // Pequena pausa para evitar uso excessivo de CPU
    }

    g.encerrar_modo_grafico()
  }

  funcao embaralhar_cartas() {
    // Cria array com pares de tipos (6 tipos, 3 pares de cada)
    inteiro tipos_para_embaralhar[] = {1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 1, 1, 3, 3, 5, 5}
    
    // Embaralha usando algoritmo Fisher-Yates
    para (inteiro i = u.numero_elementos(tipos_para_embaralhar) - 1; i > 0; i--) {
      inteiro j = u.sorteia(0, i)
      inteiro temp = tipos_para_embaralhar[i]
      tipos_para_embaralhar[i] = tipos_para_embaralhar[j]
      tipos_para_embaralhar[j] = temp
    }

    // Inicializa as cartas
    para (inteiro i = 0; i < NUM_CARTAS; i++) {
      id_tipos[i] = tipos_para_embaralhar[i]
      viradas[i] = falso
      encontradas[i] = falso

      // Calcula posição da carta (6 colunas x 3 linhas)
      pos_x[i] = (i % 6) * (TAMANHO_CARTA_L + MARGEM_CARTA) + 50
      pos_y[i] = (i / 6) * (TAMANHO_CARTA_A + MARGEM_CARTA) + 50
    }
  }

  funcao verificar_clique_carta() {
    se (m.botao_pressionado(m.BOTAO_ESQUERDO) e nao aguardando e num_cartas_viradas < 2) {
      inteiro mx = m.posicao_x()
      inteiro my = m.posicao_y()

      para (inteiro i = 0; i < NUM_CARTAS; i++) {
        se (mx >= pos_x[i] e mx <= pos_x[i] + TAMANHO_CARTA_L e
            my >= pos_y[i] e my <= pos_y[i] + TAMANHO_CARTA_A e
            nao viradas[i] e nao encontradas[i]) {
          
          viradas[i] = verdadeiro
          cartas_viradas_indices[num_cartas_viradas] = i
          num_cartas_viradas++
          s.reproduzir_som(cartas_som,falso)

          se (num_cartas_viradas == 2) {
            verificar_combinacao()
          }
          pare
        }
      }
    }
  }

  funcao verificar_combinacao() {
    inteiro carta1_idx = cartas_viradas_indices[0]
    inteiro carta2_idx = cartas_viradas_indices[1]

    se (id_tipos[carta1_idx] == id_tipos[carta2_idx]) {
      // Cartas combinam
      encontradas[carta1_idx] = verdadeiro
      encontradas[carta2_idx] = verdadeiro
      num_cartas_viradas = 0

      // Verifica se o jogo foi ganho
      verificar_vitoria()
    } senao {
      // Cartas não combinam - inicia tempo de espera
      tempo_inicio_espera = u.tempo_decorrido()
      aguardando = verdadeiro
    }
  }

  funcao processar_espera() {
    se (aguardando e u.tempo_decorrido() - tempo_inicio_espera >= TEMPO_ESPERA) {
      // Vira as cartas de volta
      viradas[cartas_viradas_indices[0]] = falso
      viradas[cartas_viradas_indices[1]] = falso
      num_cartas_viradas = 0
      aguardando = falso

      // Reduz tentativas
      tentativas--
      se (tentativas <= 0) {
        // Reinicia o jogo
        tentativas = 3
        erros++
        s.reproduzir_som(erros_som,falso)
        para (inteiro i = 0; i < NUM_CARTAS; i++) {
      	viradas[i] = falso
      	encontradas[i] = falso
      	s.reproduzir_som(resete_som,falso)
      	s.pausar_som(resete_som)
      
   	   }
   	   
      }
    }
  }

  funcao verificar_vitoria() {
    inteiro cartas_encontradas_count = 0
    para (inteiro i = 0; i < NUM_CARTAS; i++) {
      se (encontradas[i]) {
        cartas_encontradas_count++
      }
    }

    se (cartas_encontradas_count == NUM_CARTAS) {
      jogo_ganho = verdadeiro
      vitorias++
      s.reproduzir_som(vitoria_som,falso)
    }
  }

  


  funcao processar_entrada() {
    se (jogo_ganho e t.tecla_pressionada(t.TECLA_ESPACO)) {
      jogo_ganho = falso
      reiniciar_cartas()
      tentativas = 3
      s.reproduzir_som(resete_som,falso)
    }
  }

  funcao desenhar_interface() {
    // Desenha painel de informações
    g.definir_cor(g.criar_cor(26, 26, 26))
    g.desenhar_retangulo(0, 520, LARGURA_JANELA, 80, verdadeiro, falso)
    
    // Desenha textos de pontuação
    g.definir_cor(g.criar_cor(255, 255, 255))
    g.desenhar_texto(50, 540, "Tentativas: " + tentativas)
    g.desenhar_texto(200, 540, "Erros: " + erros)
    g.desenhar_texto(350, 540, "Vitórias: " + vitorias)
    
    se (tentativas == 1) {
      g.definir_cor(g.criar_cor(255, 0, 0))
      g.desenhar_texto(50, 560, "ÚLTIMA TENTATIVA!")
    }

    se (jogo_ganho) {
      g.definir_cor(g.criar_cor(0, 255, 0))
      g.desenhar_texto(350, 600, "PARABÉNS! VOCÊ GANHOU!")
      g.desenhar_texto(333, 620, "Pressione ESPAÇO para continuar")
    }
  }

  

   funcao desenhar_carta(inteiro indice) {
    se (viradas[indice] ou encontradas[indice]) {
      // Desenha a frente da carta com a imagem correspondente
      escolha (id_tipos[indice]) {
        caso 1: g.desenhar_imagem( pos_x[indice], pos_y[indice],img_flower) pare
        caso 2: g.desenhar_imagem( pos_x[indice], pos_y[indice],img_mushroom) pare
        caso 3: g.desenhar_imagem( pos_x[indice], pos_y[indice],img_star) pare
        caso 4: g.desenhar_imagem( pos_x[indice], pos_y[indice],img_1up) pare
        caso 5: g.desenhar_imagem( pos_x[indice], pos_y[indice],img_coin10) pare
        caso 6: g.desenhar_imagem( pos_x[indice], pos_y[indice],img_coin20) pare
      }
    } senao {
      // Desenha o verso da carta
      g.desenhar_imagem ( pos_x[indice], pos_y[indice],img_card_back)
    }
  }
  
  funcao reiniciar_cartas() {
    para (inteiro i = 0; i < NUM_CARTAS; i++) {
      viradas[i] = falso
      encontradas[i] = falso
    }
    embaralhar_cartas()
  }
}





/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2757; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
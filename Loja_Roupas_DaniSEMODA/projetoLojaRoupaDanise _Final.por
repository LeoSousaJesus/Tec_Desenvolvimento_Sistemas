programa
{
    inclua biblioteca Matematica --> m
    // Variaveis para Produto
    cadeia produto[50]
    real preco[50]
    inteiro quantidade[50]
    inteiro cadastroIndice = 0

    // Variaveis para Clientes
    cadeia nomesClientes[50]
    cadeia telefoneCliente[50]
    inteiro totalClientes = 0

    // Variaveis para Vendas
    inteiro venda_id[200]           // ID da venda para cada item vendido
    inteiro venda_produto_id[200]   // ID do produto de cada item vendido
    inteiro venda_quantidade[200]       // Quantidade de cada item vendido
    inteiro venda_cliente_id[200]       // ID do cliente para cada item
    real venda_total_item[200]          // Total (preço * qtd) de cada item
    cadeia venda_tipo_entrega[200]      // "Entrega" ou "Retirada"
    cadeia venda_metodo_pagamento[200]  // Método de pagamento escolhido
    
    inteiro proximaVendaId = 1      // Contador para o código único de cada nova venda
    inteiro totalItensVendidos = 0  // Contador do total de linhas de itens vendidos em todas as vendas

    // --- FUNÇÃO PRINCIPAL ---
    funcao inicio() {
        inteiro opcao = 0

        cadastroInicial() // Adiciona dados de exemplo para facilitar o teste
        
        faca {
            escreva("\n--- BEM-VINDO a Loja (Dani-se a moda) ---\n")
            escreva("                MENU PRINCIPAL\n")
            escreva("------------------------------------------------\n")
            escreva("| 1. Gestão de Produtos                        |\n")
            escreva("| 2. Gestão de Clientes                        |\n")
            escreva("| 3. Realizar Pedido (Venda)                   |\n")
            escreva("| 4. Relatório de Vendas                       |\n")
            escreva("| 5. Sair do Sistema                           |\n")
            escreva("------------------------------------------------\n")
            escreva("Escolha uma opção: ")
            leia(opcao)
            limpa()

            escolha (opcao)
            {
                caso 1:
                    menuProdutos()
                    pare
                caso 2:
                    menuClientes()
                    pare
                caso 3:
                    realizarPedido()
                    pare
                caso 4:
                    relatorioVendas()
                    pare
                caso 5:
                    escreva("\nObrigado por usar nosso sistema. FIM DA LOJA.\n")
                    pare
                caso contrario:
                    escreva("\nOpção inválida! Tente novamente.\n")
            }
        } enquanto (opcao != 5)
    }

    // --- MENUS SECUNDÁRIOS ---
    funcao menuProdutos() {
        inteiro opc = 0
        faca {
            escreva("\n--- Gestão de Produtos ---\n")
            escreva("1. Cadastrar Novo Produto\n")
            escreva("2. Consultar Produtos\n")
            escreva("3. Atualizar Produto\n")
            escreva("4. Voltar ao Menu Principal\n")
            escreva("Digite a opção: ")
            leia(opc)
            limpa()

            escolha(opc) {
                caso 1: cadastrarProduto() pare
                caso 2: consultarProduto() pare
                caso 3: atualizarProduto() pare
                caso 4: pare
                caso contrario: escreva("Opção inválida!\n")
            }
        } enquanto(opc != 4)
    }

    funcao menuClientes() {
        inteiro opc = 0
        faca {
            escreva("\n--- Gestão de Clientes ---\n")
            escreva("1. Cadastrar Novo Cliente\n")
            escreva("2. Consultar Clientes\n")
            escreva("3. Voltar ao Menu Principal\n")
            escreva("Digite a opção: ")
            leia(opc)
            limpa()

            escolha(opc) {
                caso 1: cadastrarCliente() pare
                caso 2: consultarTodosClientes() pare
                caso 3: pare
                caso contrario: escreva("Opção inválida!\n")
            }
        } enquanto(opc != 3)
    }

    // --- FUNÇÕES DE PRODUTO ---
    funcao cadastrarProduto(){
        se (cadastroIndice < 50) { //inteiro inicial
            escreva("\n--- Cadastro de Produto ---\n")
            escreva("Nome do produto: ")
            leia(produto[cadastroIndice]) //atribuição no vetor produto[]
            escreva("Preço do produto (Ex: 59.90): ")
            leia(preco[cadastroIndice]) 
            escreva("Quantidade em estoque: ")
            leia(quantidade[cadastroIndice])
            escreva("\nProduto '", produto[cadastroIndice], "' cadastrado com sucesso com o ID: ", cadastroIndice, "\n")
            cadastroIndice++ //indice do proximo produto aumentou em 1
        } senao {
            escreva("Limite de cadastro de produtos atingido!\n")
        }
    }

    funcao atualizarProduto(){
        inteiro id, opc
        consultarProduto()
        escreva("\nQual ID do produto quer atualizar? ")
        leia(id)
        id-=1 // id = id - 1

        se (id >= 0 e id < cadastroIndice) { 
            escreva("\nProduto selecionado: ", produto[id], "\n")
            escreva("O que deseja atualizar?\n")
            escreva("1. Estoque\n")
            escreva("2. Preço\n")
            escreva("3. Remover Produto\n")
            escreva("Digite a opção: ")
            leia(opc)
            
            se(opc == 1){
                escreva("Qual a nova quantidade em estoque? ")
                leia(quantidade[id])
                escreva("Estoque atualizado com sucesso!\n")
            }
            senao se(opc == 2){
                escreva("Qual o novo preço da peça? ")
                leia(preco[id])
                escreva("Preço atualizado com sucesso!\n")
            }
            senao se(opc == 3){
                cadeia confirmacao
                escreva("Certeza que deseja remover '", produto[id], "' da lista? (s/n): ")
                leia(confirmacao)
                se (confirmacao == "s" ou confirmacao == "S") {
                    // Lógica para remover o item e reorganizar o vetor  
                    para (inteiro i = id; i < cadastroIndice - 1; i++) {
                        produto[i] = produto[i+1]
                        preco[i] = preco[i+1]
                        quantidade[i] = quantidade[i+1]
                    }
                    cadastroIndice-- // Reduz o contador de produtos
                    escreva("Produto removido com sucesso!\n")
                } senao {
                    escreva("Operação cancelada.\n")
                }
            }
        } senao {
            escreva("ID de produto inválido!\n")
        }
    }

    funcao consultarProduto(){
        escreva("\n--- LISTA DE PRODUTOS CADASTRADOS ---\n")
        para(inteiro i = 0; i < cadastroIndice; i++){
            se(quantidade[i]<5){
              escreva("----------- QUASE ACABANDO -----------\n")
              escreva("ID: ", 1+i, "\n")
              escreva("Produto: ", produto[i], "\n")
              escreva("Preço: R$ ", preco[i], "\n")
              escreva("Estoque: ", quantidade[i], " unidades\n")
            }senao{
            escreva("---------------------------------------\n")
            escreva("ID: ", 1+i, "\n")
            escreva("Produto: ", produto[i], "\n")
            escreva("Preço: R$ ", preco[i], "\n")
            escreva("Estoque: ", quantidade[i], " unidades\n")
            }
        }
        escreva("---------------------------------------\n")
    }

    // --- FUNÇÕES DE CLIENTE ---
    funcao cadastrarCliente() {
        se (totalClientes < 50) {
            escreva("\n--- Cadastro de Cliente ---\n")
            escreva("Nome do Cliente: ")
            leia(nomesClientes[totalClientes])
            escreva("Telefone do Cliente: ")
            leia(telefoneCliente[totalClientes]) // Registro do nome cliente e telefone
            escreva("Cliente '", nomesClientes[totalClientes], "' cadastrado com sucesso! Código: ", totalClientes, "\n")
            totalClientes++ //Vai para o próximo cadastro
        } senao {
            escreva("Limite de clientes atingido!\n")
        }
    }

    funcao consultarTodosClientes() {
        escreva("\n--- LISTA DE CLIENTES CADASTRADOS ---\n")
        para (inteiro i = 0; i < totalClientes; i++) {
            escreva("---------------------------------------\n")
            escreva("Código: ", 1+i, "\n")
            escreva("Nome: ", nomesClientes[i], "\n")
            escreva("Telefone: ", telefoneCliente[i], "\n")
        }
        escreva("---------------------------------------\n")
    }

    // --- FUNÇÕES DE VENDA E RELATÓRIO ---
    funcao realizarPedido() {
        inteiro clienteId, produtoId, qtdDesejada
        real totalPedido = 0.0
        cadeia continuarComprando = "s"
        cadeia tipoEntrega, metodoPagamento
        inteiro opcEntrega, opcPagamento
        
        se (cadastroIndice == 0) {
            escreva("\nNão há produtos cadastrados para vender!\n")
            retorne
        }
        
        se (totalClientes == 0) {
            escreva("\nNão há clientes cadastrados! Cadastre um cliente primeiro.\n")
            retorne
        }

        escreva("\n------------ NOVO PEDIDO ---------------\n")
        consultarTodosClientes()
        escreva("Digite o código do cliente para este pedido: ")
        escreva("\nCadastro de novo cliente digite 626: ")
        leia(clienteId)
        clienteId-=1
        se(clienteId==625){
          cadastrarCliente()
          clienteId=totalClientes-1
        }
        senao se (clienteId < 0 ou clienteId >= totalClientes) {
            escreva("Código de cliente inválido!\n")
            retorne
        }

        inteiro itensNestePedido[50] // Guarda os índices dos itens vendidos nesta transação
        inteiro contadorItens = 0

        faca {
            consultarProduto()
            escreva("Na compra de 6 ou mais peças do mesmo produto haverá um desconto de 15% nesse produto.")
            escreva("\nDigite o ID do produto desejado: ")
            leia(produtoId)
            produtoId-=1

            se (produtoId >= 0 e produtoId < cadastroIndice) {
                escreva("Digite a quantidade: ")
                leia(qtdDesejada)

                se (qtdDesejada > 0 e quantidade[produtoId] >= qtdDesejada) {
                    // Armazena o item no carrinho temporário
                    venda_id[totalItensVendidos] = proximaVendaId
                    venda_produto_id[totalItensVendidos] = produtoId
                    venda_quantidade[totalItensVendidos] = qtdDesejada
                    venda_cliente_id[totalItensVendidos] = clienteId
                    real valorTotal = preco[produtoId] * qtdDesejada

                    // Aplica 15% de desconto se comprar 6 ou mais unidades
                    se (qtdDesejada >= 6) {
                        valorTotal = valorTotal * 0.85
                        escreva("Desconto de 15% aplicado para o produto '", produto[produtoId], "'!\n")
                    }

                    venda_total_item[totalItensVendidos] = m.arredondar(valorTotal,2)
                    totalPedido += venda_total_item[totalItensVendidos]
                    quantidade[produtoId] -= qtdDesejada // Abate do estoque
                    
                    itensNestePedido[contadorItens] = totalItensVendidos // Guarda o índice
                    contadorItens++
                    totalItensVendidos++

                    escreva("Produto adicionado ao pedido!\n")
                } senao {
                    escreva("Quantidade inválida ou estoque insuficiente! (Estoque atual: ", quantidade[produtoId], ")\n")
                }
            } senao {
                escreva("ID de produto inválido!\n")
            }

            escreva("Deseja adicionar outro produto? (s/n): ")
            leia(continuarComprando)
            
        } enquanto (continuarComprando == "s" ou continuarComprando == "S")

        se (totalPedido > 0) {
            // Funcionalidade: Opção de entrega ou retirada
            escreva("\n--------- FORMA DE ENTREGA ---------\n")
            escreva("1. Entrega a Domicílio (+ R$10.00 de taxa)\n")
            escreva("2. Retirada na Loja\n")
            escreva("Escolha a opção: ")
            leia(opcEntrega)
            se (opcEntrega == 1) {
                tipoEntrega = "Entrega a Domicílio"
                totalPedido = totalPedido + 10.0
            } senao {
                tipoEntrega = "Retirada na Loja"
            }

            // Funcionalidade: Integração com pagamento
            faca{
                escreva("\n--------- MÉTODO DE PAGAMENTO ---------\n")
                escreva("Total do Pedido: R$ ", totalPedido, "\n")
                escreva("1. Cartão de Crédito\n")
                escreva("2. PIX\n")
                escreva("3. Boleto Bancário\n")
                escreva("4. Cancelar a compra\n")
                escreva("Escolha a opção: ")
                leia(opcPagamento)
                escolha (opcPagamento) {
                    caso 1: metodoPagamento = "Cartão de Crédito" pare
                    caso 2: metodoPagamento = "PIX" pare
                    caso 3: metodoPagamento = "Boleto Bancário" pare
                    caso 4:
                    para (inteiro i = 0; i < contadorItens; i++) {
                        inteiro indice = itensNestePedido[i]
                        inteiro id_produto = venda_produto_id[indice]
                        quantidade[id_produto] = quantidade[id_produto] + venda_quantidade[indice]
                        totalItensVendidos--
                    }
                    escreva("Compra cancelada. Itens removidos e estoque restaurado.\n")
                    retorne
                    caso contrario: escreva("Escolha uma opção válida!\n")
                }
            }enquanto(opcPagamento >4 e opcPagamento<0)

            // Atribui as informações de entrega e pagamento a todos os itens deste pedido
            para(inteiro i = 0; i < contadorItens; i++) {
                inteiro indice = itensNestePedido[i]
                venda_tipo_entrega[indice] = tipoEntrega
                venda_metodo_pagamento[indice] = metodoPagamento
            }
            
            escreva("\n--- PEDIDO FINALIZADO COM SUCESSO! ---\n")
            escreva("Código da Venda: ", proximaVendaId, "\n")
            escreva("Cliente: ", nomesClientes[clienteId], "\n")
            escreva("Valor Total: R$ ", totalPedido, "\n")
            escreva("Pagamento: ", metodoPagamento, "\n")
            escreva("Entrega: ", tipoEntrega, "\n")
            
            proximaVendaId++ // Incrementa para a próxima venda ser única
        } senao {
            escreva("\nNenhum item foi adicionado. Pedido cancelado.\n")
        }
    }

    funcao relatorioVendas() {
        escreva("\n--------------- RELATÓRIO DE VENDAS ---------------\n")
        se (totalItensVendidos == 0) {
            escreva("Nenhuma venda foi realizada até o momento.\n")
            retorne
        }

        para (inteiro idVenda = 1; idVenda < proximaVendaId; idVenda++) {
            real totalDaVenda = 0.0
            inteiro clienteId = -1
            cadeia tipoEntrega = ""
            cadeia metodoPagamento = ""
            
            escreva("\n====================================================\n")
            escreva("                 VENDA CÓDIGO: ", idVenda, "\n")
            escreva("====================================================\n")

            para (inteiro i = 0; i < totalItensVendidos; i++) {
                se (venda_id[i] == idVenda) {
                    se (clienteId == -1) { // Pega os dados gerais da venda no primeiro item encontrado
                        clienteId = venda_cliente_id[i]
                        tipoEntrega = venda_tipo_entrega[i]
                        metodoPagamento = venda_metodo_pagamento[i]
                        escreva("Cliente: ", nomesClientes[clienteId], " (Código: ", clienteId+1, ")\n\n")
                        escreva(" Item\t\t| Qtd\t| Preço Unit.\t| Subtotal\n")
                        escreva("----------------------------------------------------\n")
                    }
                    inteiro id_produto = venda_produto_id[i]
                    escreva(" ", produto[id_produto], "\t| ", venda_quantidade[i], "\t| R$ ",preco[id_produto], "\t| R$ ", venda_total_item[i], "\n")
                    totalDaVenda = totalDaVenda + venda_total_item[i]
                }
            }

            se (tipoEntrega == "Entrega a Domicílio") {
                totalDaVenda = totalDaVenda + 10.00
                escreva(" Taxa de Entrega:\t\t\t\t| R$ 10.00\n")
            }
            escreva("----------------------------------------------------\n")
            escreva(" > Entrega: ", tipoEntrega, "\n")
            escreva(" > Pagamento: ", metodoPagamento, "\n")
            // escreva(" > TOTAL DO PEDIDO: R$ ", totalDaVenda, "\n")
            // ALTERADO: Adicionado Matematica.arredondar() para formatar o total
            escreva(" > TOTAL DO PEDIDO: R$ ", m.arredondar(totalDaVenda, 2), "\n")
        }
    }

    // Função para pré-cadastrar dados e facilitar testes
    funcao cadastroInicial() {
        // Produtos
        produto[0] = "Camiseta Basica"
        preco[0] = 49.90
        quantidade[0] = 30
        produto[1] = "Calca Jeans"
        preco[1] = 89.90
        quantidade[1] = 20
        produto[2] = "Moletom Canguru"
        preco[2] = 150.00
        quantidade[2] = 15
        cadastroIndice = 3

        // Clientes
        nomesClientes[0] = "Ana Silva"
        telefoneCliente[0] = "(65)8497-6458"
        nomesClientes[1] = "Carlos Souza"
        telefoneCliente[1] = "(99)9999.4573"
        totalClientes = 2
    }
}

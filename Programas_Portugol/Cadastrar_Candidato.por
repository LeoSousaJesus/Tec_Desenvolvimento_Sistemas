//  Programa Cadastrar Candidato
programa {
    // Estrutura para armazenar os candidatos
    tipo Candidato {
        cadeia nome
        inteiro idade
        cadeia partido
        inteiro votos = 0
    }

    // Variáveis globais
    Candidato candidatos[100]
    inteiro totalCandidatos = 0
    inteiro votosTotais = 0

    funcao cadastrarCandidato() {
        se (totalCandidatos >= 100) {
            escreva("Limite máximo de candidatos atingido!\n")
            retorne
        }

        escreva("\n=== CADASTRO DE CANDIDATO ===\n")
        escreva("Nome: ")
        leia(candidatos[totalCandidatos].nome)
        
        escreva("Idade: ")
        leia(candidatos[totalCandidatos].idade)
        
        escreva("Partido: ")
        leia(candidatos[totalCandidatos].partido)
        
        totalCandidatos++
        escreva("Candidato cadastrado com sucesso!\n")
    }

    funcao registrarVotos() {
        se (totalCandidatos == 0) {
            escreva("Nenhum candidato cadastrado ainda!\n")
            retorne
        }

        inteiro opcao
        escreva("\n=== REGISTRAR VOTOS ===\n")
        
        para (inteiro i = 0; i < totalCandidatos; i++) {
            escreva(i+1, " - ", candidatos[i].nome, " (", candidatos[i].partido, ")\n")
        }
        
        escreva("Escolha o candidato (1-", totalCandidatos, "): ")
        leia(opcao)
        
        se (opcao < 1 ou opcao > totalCandidatos) {
            escreva("Opção inválida!\n")
            retorne
        }
        
        candidatos[opcao-1].votos++
        votosTotais++
        escreva("Voto registrado para ", candidatos[opcao-1].nome, "!\n")
    }

    funcao mostrarResultados() {
        se (totalCandidatos == 0) {
            escreva("Nenhum candidato cadastrado ainda!\n")
            retorne
        }

        escreva("\n=== RESULTADOS DA ELEIÇÃO ===\n")
        escreva("Total de votos: ", votosTotais, "\n\n")
        
        // Ordena os candidatos por votos (decrescente)
        para (inteiro i = 0; i < totalCandidatos-1; i++) {
            para (inteiro j = i+1; j < totalCandidatos; j++) {
                se (candidatos[i].votos < candidatos[j].votos) {
                    Candidato temp = candidatos[i]
                    candidatos[i] = candidatos[j]
                    candidatos[j] = temp
                }
            }
        }
        
        // Mostra resultados
        para (inteiro i = 0; i < totalCandidatos; i++) {
            real percentual = 0.0
            se (votosTotais > 0) {
                percentual = (candidatos[i].votos * 100.0) / votosTotais
            }
            
            escreva(i+1, "º Lugar: ", candidatos[i].nome, " (", candidatos[i].partido, ") - ",
                   candidatos[i].votos, " votos (", arredondar(percentual*10)/10, "%)\n")
        }
    }

    funcao inicio() {
        inteiro opcao
        
        faca {
            escreva("\n=== SISTEMA DE ELEIÇÕES ===\n")
            escreva("1 - Cadastrar candidato\n")
            escreva("2 - Registrar voto\n")
            escreva("3 - Mostrar resultados\n")
            escreva("4 - Sair\n")
            escreva("Escolha uma opção: ")
            leia(opcao)
            
            escolha (opcao) {
                caso 1:
                    cadastrarCandidato()
                    pare
                caso 2:
                    registrarVotos()
                    pare
                caso 3:
                    mostrarResultados()
                    pare
                caso 4:
                    escreva("Encerrando o sistema...\n")
                    pare
                caso contrario:
                    escreva("Opção inválida!\n")
            }
        } enquanto (opcao != 4)
    }
}


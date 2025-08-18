# Jogo da Forca - Portugol Studio

Este é um jogo da forca completo desenvolvido em Portugol Studio com interface gráfica, sons e imagens.

## Arquivos Necessários

Para executar o jogo, você precisará dos seguintes arquivos na mesma pasta do código:

### Código Principal
- `jogo_da_forca.por` - Código principal do jogo

### Imagens (7 arquivos)
- `estagio_0.png` - Forca vazia (0 erros)
- `estagio_1.png` - Cabeça (1 erro)
- `estagio_2.png` - Cabeça + corpo (2 erros)
- `estagio_3.png` - Cabeça + corpo + 1 braço (3 erros)
- `estagio_4.png` - Cabeça + corpo + 2 braços (4 erros)
- `estagio_5.png` - Cabeça + corpo + 2 braços + 1 perna (5 erros)
- `estagio_6.png` - Boneco completo (6 erros - fim de jogo)

### Sons (2 arquivos)
- `som_acerto.wav` - Som reproduzido quando o jogador acerta uma letra
- `som_erro.wav` - Som reproduzido quando o jogador erra uma letra

## Como Executar

1. Abra o Portugol Studio
2. Certifique-se de que todos os arquivos estão na mesma pasta
3. Abra o arquivo `jogo_da_forca.por`
4. Execute o programa

## Funcionalidades

- **Interface Gráfica**: O jogo possui uma interface visual com imagens da forca
- **Sons**: Feedback sonoro para acertos e erros
- **Sistema de Dicas**: 3 dicas são fornecidas conforme o jogador erra
- **Palavras Variadas**: 3 palavras diferentes com suas respectivas dicas
- **Validação de Entrada**: Verifica se a letra já foi tentada
- **Feedback Visual**: Mostra letras tentadas, contador de erros e dicas

## Bibliotecas Utilizadas

- `Util` - Para funções auxiliares e sorteio
- `Texto` - Para manipulação de strings
- `Graficos` - Para interface gráfica
- `Sons` - Para reprodução de áudio

## Palavras do Jogo

1. **AMOR** - Sentimento de afeto
2. **PINGUIM** - Animal que gosta do frio
3. **DORMIR** - Verbo relacionado ao quarto

Cada palavra possui 3 dicas que são reveladas conforme o jogador comete erros.


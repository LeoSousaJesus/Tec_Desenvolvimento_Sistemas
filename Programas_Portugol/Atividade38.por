/*
  Você foi contratado para desenvolver um sistema de emissão de boletos. O cliente deve informar qual o melhor dia para pagamento do boleto. Os dias disponíveis são 2, 5 ou 10.
  O sistema deve validar o dia informado pelo cliente e apresentar a mensagem boleto registrado caso o dia seja válido. Se o dia for inválido, 
  o sistema deve solicitar um novo dia até que ele seja digitado corretamente. Utilize a estrutura de repetição "faça enquanto".
*/


programa {
    funcao inicio()
    {
        inteiro dia
        
        faca {
            escreva("Informe o dia de pagamento (2, 5 ou 10): ")
            leia(dia)
            
            se (dia == 2 ou dia == 5 ou dia == 10) {
                escreva("O Boleto deverá ser pago no dia ", dia, ".\n")
            } senao {
                escreva("Dia inválido! Informe um dos dias a seguir: (2, 5 ou 10).\n")
            }
        } enquanto (dia != 2 e dia != 5 e dia != 10)
    }
}
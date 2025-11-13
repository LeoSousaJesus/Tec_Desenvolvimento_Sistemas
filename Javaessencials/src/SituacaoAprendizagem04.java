public class SituacaoAprendizagem04 {

    // casting explicito
    // (float) x "o x é inteiro"

    // casting implicito
    //int x = 10;
    //double y = x;
    public String verificaPar(int numero){
        if(numero % 2 == 0){
            return "par";
        }else{
            return "impar";
        }
    }
    public String verificaVip(boolean taNoPlano,String tipoPlano){
        if(taNoPlano == true || tipoPlano.equals("plus")){
            return "Vip";
        }else{
            return "Seja nosso cliente";
        }
    }
}


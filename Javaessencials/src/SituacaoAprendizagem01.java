public class SituacaoAprendizagem01 {
    //Operadores Gerais (todos)
    //Calculadora Avançada
    //Aritmética
    //Relacional
    //Lógico
    //Baskara
    //Estatística
    //Matematica (operações)
    private int x;
    private int y;
    public SituacaoAprendizagem01(){
        //vazio - não precisa inicializar o objeto
    }
    public SituacaoAprendizagem01(int x, int y){
        this.x = x;
        this.y = y;
    }

    public int getX() {
        return x;
    }

    public int getY() {
        return y;
    }
    public int somar(){
        return this.x + this.y;
    }
    public int subtrair(){
        return this.x - this.y;
    }
    public int multiplicar(){
        return this.x * this.y;
    }
    public double dividir(){
        return (double)this.x / this.y;
    }
    public int resto(){
        return this.x % this.y;
    }




    //retornar o resto da divisão de dois números
    //A classe vai ter que se comunicar com o programa principal
    //menu switch
    //35 minutes......
}
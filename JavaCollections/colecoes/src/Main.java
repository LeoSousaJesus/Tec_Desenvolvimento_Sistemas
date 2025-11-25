import javax.xml.transform.Source;
import java.util.*;
import java.util.stream.Collectors;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        List<String> funcionarios = new ArrayList<>();
        funcionarios.add("Paulo");
        funcionarios.add("Lucca");
        funcionarios.add("Julia");
        funcionarios.add("Gabriel Menotti");
        funcionarios.add("Baby Josias");
        funcionarios.add("Mago Leandro");
        funcionarios.add("Abboud");
        funcionarios.add("Eduardo Maestro");
        funcionarios.add("Gabriel Blau Blau");

        System.out.println(funcionarios);
        System.out.println(funcionarios.get(0));
        System.out.println(funcionarios.get(1));
        System.out.println(funcionarios.get(2));
        System.out.println(funcionarios.get(3));
        System.out.println(funcionarios.get(4));
        System.out.println(funcionarios.get(5));
        System.out.println(funcionarios.get(6));
        System.out.println(funcionarios.get(7));
        System.out.println(funcionarios.get(8));
        System.out.println(funcionarios.size());

        // pré-requisitos para o curso de coleções

        /*
            Interface
            Classe Abstrata
            "Metodo" Abstrato
            Classse Concreta (Implementação)
         */


        /*
            List ----------------------- Arraylist
            Set ------------------------ HashSet
            Map ------------------------ HashMap
         */

        /*
            (Java 8) Streams: operações (filtros e funções agragadas) nas collections
            Realizar operações encadeadas
            umacoisa.
                    outracoisa.
                                outracoisadaoutracoisa.
                                outracoisachamaoutracoisachamandooutracoisa (Gooooool)
         */

        /*
            List (Interface)
            --> ArrayList (buscas rápidas) - velocidade
            --> LinkedList (Inserção e remoção) - manipulação de grande volume
         */

        // Metodos

        /*
            add - adicionar um elemento
            remove - para remover um elemento
            contains - verificar se existe um elemento na lista
            get - obter um elemento em uma posição específica
            size - para verificar o tamanho da lista
         */


        /*
            Inteface Set --> conjunto (ordenação não é o foco)
            Não permite duplicidade

            Quais classes implementam a interface Set:
            - HashSet: rápido não se preocupa com a ordenação
            - LinkedHashSet - mantém  ordem de inserção
            - TreeSet - permite ordenação, mas é mais lento
         */

        Set<String> produtos = new HashSet<>();
        produtos.add("Água");
        produtos.add("Água com gás");
        produtos.add("Fanta Laranja");
        produtos.add("Coca-cola");
        produtos.add("Coca-cola");
        System.out.println(produtos);


        //Maps
        /*
            Utiliza idéia chave-valor
            Não permite valores duplicados
            Temos um índice e um valor que compõem esse índice

            - HashMap - é mais rápido e não considera ordem
            - LinkedHashMap - mantém a ordem de inserção
            - TreeMap - ordenado pela chave.

            Operações:
            - Put
            - Get
            - Remove
            - ContainsKey
            - KeySet
         */

        Map<Integer,String> clientes = new HashMap<>();
        clientes.put(1,"Maria");
        clientes.put(2,"John");
        clientes.put(3,"Silas");
        System.out.println(clientes);

        /*
            API de Streams

                - filtros
                - transformações
                - agregaçoes
                - sme modificar a coleção original

                Zagueiro toca ... (coleção)
                    Meio de campo (filter) - filtrar
                    Meio de campo (map) - transformar
                    Meio de campo (reduce e collect)
                        Atacante (Gool)

                - reduce(): é usado para finalizar algum cálculo
                - collect(): é usado para transformar os dados em outra lista
         */

        List<String> funcionarios2 = List.of("Ana","Bruno","Carlos");
        List<String> funcLetraA = funcionarios2.stream().filter(f->f.startsWith("A")).collect(Collectors.toList());
        System.out.println(funcLetraA);

        //Map...
        List<Double> notasJulia = List.of(99.0,89.7,100.0,95.0);
        List<Double> notasFinaisJulia = notasJulia.stream().map(n -> n+0.05).collect(Collectors.toList());

        System.out.println(notasJulia);
        System.out.println(notasFinaisJulia);
        double totalNotasJulia = notasJulia.stream().reduce(0.0,Double::sum);

        double totalNotasJuliaFinal = notasFinaisJulia.stream().reduce(0.0,Double::sum);

        System.out.println(totalNotasJulia);
        System.out.println(totalNotasJuliaFinal);
        }
    }
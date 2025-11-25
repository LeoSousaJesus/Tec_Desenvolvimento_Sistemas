import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {

        /*
            Questão 01: Você está desenvolvendo um sistema para gerenciar os nomes dos funcionários de uma empresa de tecnologia.
            O sistema precisa permitir que novos funcionários sejam adicionados a uma lista de nomes.
            Sua tarefa é criar uma lista de strings e adicionar os nomes dos funcionários "João", "Maria", " Vitor" e “Ana” a essa lista.
            Depois, imprima a lista para verificar se os nomes foram adicionados corretamente.

            Saída esperada
            a:

            Lista de funcionários: [João, Maria, Vitor, Ana]
         */
        List<String> funcionarios = new ArrayList<>();
        funcionarios.add("João");
        funcionarios.add("Maria");
        funcionarios.add("Vitor");
        funcionarios.add("Ana");

        System.out.println("Lista de funcionários: " + funcionarios);


        /*
            Questão 02
            Você está trabalhando no sistema de gestão de uma escola, garantindo que a lista de estudantes esteja sempre correta.
            Durante uma revisão nos cadastros, percebeu que um nome foi adicionado incorretamente: “Pedro”.
            Para evitar confusões na emissão de certificados e registros, você precisa corrigir essa informação imediatamente.
            Sua tarefa é remover o nome “Pedro” da lista. Considere que a lista inicial possui os seguintes nomes: Joana, Lucas, Pedro e Antônio.

            Saída esperada:

            Lista inicial: [Joana, Lucas, Pedro, Antônio]
            Lista após a exclusão: [Joana, Lucas, Antônio]
        */

        List<String> estudantes = new ArrayList<>();
        estudantes.add("Joana");
        estudantes.add("Lucas");
        estudantes.add("Pedro");
        estudantes.add("Antônio");

        System.out.println();
        System.out.println("Lista inicial: " + estudantes);

        estudantes.remove("Pedro");

        System.out.println("Lista após a exclusão: " + estudantes);


        /*
            Questão 03 parte 1

            Você faz parte da equipe de tecnologia de uma empresa que precisa garantir que o cadastro de funcionários esteja sempre atualizado. Hoje, você recebeu uma solicitação para manter o controle de acesso à empresa. Para isso, seu código deve ser capaz de:

            Verificar quantos funcionários estão registrados
            Descobrir o nome do segundo funcionário da lista

            Exemplo de entrada:

            funcionarios.add("João");
            funcionarios.add("Maria");
            funcionarios.add("Ana");
            funcionarios.add("Pedro");
            funcionarios.add("Antônio");

            Saída esperada:

            A segunda pessoa da lista é: Maria
            Total de funcionários: 5
        */

        List<String> funcionarios2 = new ArrayList<>();
        funcionarios2.add("João");
        funcionarios2.add("Maria");
        funcionarios2.add("Ana");
        funcionarios2.add("Pedro");
        funcionarios2.add("Antônio");
        System.out.println();
        System.out.println("A segunda pessoa da lista é: " + funcionarios2.get(1));
        System.out.println("Total de funcionários: " + funcionarios2.size());


        /*
            Questão 03 parte 2

                Você é uma pessoa desenvolvedora de software responsável por otimizar o sistema de gestão de eventos de uma empresa.
                Recentemente, a organização relatou um problema: eventos duplicados estão aparecendo na lista de cadastros,
                o que pode gerar inconsistências nos relatórios e dificultar processos administrativos.
                Sua tarefa é exibir a lista de eventos sem valores duplicados.

                Exemplo de entrada:

                eventos.add("IA Conference Brasil");
                eventos.add("AI Summit");
                eventos.add("DevFest");
                eventos.add("Cloud Expo");
                eventos.add("IA Conference Brasil");
                eventos.add("DevFest");

                Saída esperada:

                Lista de eventos: [DevFest, AI Summit, Cloud Expo, IA Conference Brasil]
         */
        List<String> eventos = new ArrayList<>();
        eventos.add("IA Conference Brasil");
        eventos.add("AI Summit");
        eventos.add("DevFest");
        eventos.add("Cloud Expo");
        eventos.add("IA Conference Brasil");
        eventos.add("DevFest");

        // Remove duplicados preservando a primeira ocorrência
        java.util.Set<String> setEventos = new java.util.LinkedHashSet<>(eventos);
        java.util.List<String> eventosUnicos = new java.util.ArrayList<>(setEventos);

        // Ordena por comprimento e, em caso de empate, alfabeticamente
        eventosUnicos.sort(java.util.Comparator.comparingInt(String::length).thenComparing(String::compareTo));

        System.out.println();
        System.out.println("Lista de eventos: " + eventosUnicos);


        /*
            Questão 04

                Criando um Map de clientes
                Próxima Atividade

                Você foi encarregado de desenvolver um sistema para gerenciar os clientes de uma livraria.
                Para garantir um controle preciso dos registros, cada cliente deve possuir um ID único associado ao seu nome.

                Para resolver essa tarefa você deve:
                    Armazenar os clientes através de uma chave e valor: (id, nome)
                    Cadastrar três clientes
                    Recuperar o nome do cliente de ID igual a 2

                Saída esperada:

                O nome do cliente com ID 2 é: Marcos
         */
        
        // Questão 04: Criando um Map de clientes (id -> nome)
        Map<Integer, String> clientes = new HashMap<>();
        clientes.put(1, "Ana");
        clientes.put(2, "Marcos");
        clientes.put(3, "Luiza");

        System.out.println();
        System.out.println("O nome do cliente com ID 2 é: " + clientes.get(2));



        /*

            Questão 05

        Verificando se a chave existe
        Próxima Atividade

        Você é uma pessoa desenvolvedora que está criando um sistema de gerenciamento de clientes para uma empresa. A equipe de atendimento precisa acessar os dados dos clientes cadastrados no sistema através de um ID e conta com sua ajuda para implementar este sistema de busca.

        Sua tarefa é:

            Armazenar os clientes através de um Map<Integer, String>, onde a chave é o ID e o valor é o nome.
            Cadastrar cinco clientes no sistema.
            Verificar se um ID específico existe antes de tentar recuperar o nome do cliente.
            Se a chave existir, você pode acessar o nome associado; caso contrário, exiba uma mensagem informando que o cliente não foi encontrado.

        Exemplo de entrada:

        clientes.put(1, "Maria");
        clientes.put(2, "Marcos");
        clientes.put(3, "Ana");
        clientes.put(4, "Joana");
        clientes.put(5, "Karen");

        Saída esperada:

        Caso o cliente exista:

        O nome do cliente com ID 5 é: Karen

        Caso não exista:

         Cliente com ID 6 não encontrado.

        Questão 06

        Selecionando funcionários com nomes curtos
        Próxima Atividade

        Imagine que a equipe de RH precisa gerar relatórios específicos com listas de funcionários cujos nomes tenham um determinado número de caracteres ou menos para facilitar segmentações internas. Para isso, você deve ajudá-los desenvolvendo um programa capaz de:

            Criar uma lista contendo os nomes dos funcionários.
            Filtrar apenas os nomes que tenham menos de 5 caracteres ou exatamente 5 caracteres.
            Criar uma lista contendo os nomes filtrados.
            Exibir a lista filtrada no console.

        Exemplo de entrada:

        List<String> funcionarios = List.of("Ana", "Bruno", "Carlos", "Amanda", "Alice", "Daniel", "Caroline");

        Saída esperada:

        [Ana, Bruno, Alice]

        Questão 07

        Calculando o quadrado dos números
        Próxima Atividade

        Você está desenvolvendo uma aplicação matemática que precisa calcular o quadrado de uma lista de números. Essa funcionalidade será usada para gerar gráficos e análises estatísticas. Para resolver essa tarefa você deve:

            Criar uma lista contendo os números fornecidos.
            Calcular o quadrado de cada número utilizando o método map.
            Criar uma nova lista contendo os resultados.
            Exibir a lista de quadrados no console.

        Exemplo de entrada:

        List<Integer> numeros = List.of(2, 3, 5, 7, 11);

        Saída esperada:

         Quadrados dos números: [4, 9, 25, 49, 121]

        Questão 08

        Calculando o total com imposto
        Próxima Atividade

        Imagine que você trabalha no setor financeiro de uma empresa e precisa calcular o valor total gasto na compra de produtos. No entanto, a empresa precisa considerar um imposto de 8% sobre o valor total para definir corretamente o preço final dos produtos.

        Crie um programa que:

            Crie uma lista contendo os preços dos produtos.
            Utilize reduce() para calcular o total gasto.
            Calcule o valor do imposto (8%) sobre o total.
            Exiba o valor total antes e depois da aplicação do imposto, com duas casas decimais.

        Exemplo de entrada:

        List<Double> precosProdutos = List.of(29.99, 49.50, 15.75, 99.99);

        Saída esperada:

        Valor total antes do imposto: 195.23
        Valor total com imposto de 8%: 210.85

        Questão 09
        Calculando estatísticas das notas
        Próxima Atividade

        Você deseja analisar as notas dos alunos e alunas em uma disciplina para entender melhor o desempenho da turma. Além da média, você também quer saber a menor e a maior nota para ter um panorama completo. Para isso, você deve criar um programa que seja capaz de:

            Criar uma lista contendo as notas dos alunos.
            Utilizar reduce() para calcular a soma total das notas.
            Calcular a média das notas.
            Determinar a menor e a maior nota da lista. Dica: use a função max e min da classe Stream.
            Exibir os resultados no console.

        Exemplo de entrada:

        List<Double> notas = List.of(7.5, 8.0, 6.5, 9.0, 10.0);

        Saída esperada:

        A média das notas é: 8.2
        A menor nota foi: 6.5
        A maior nota foi: 10.0

        Questão 10










        def save(self, *args, **kwargs):
                if self.destaque == '0':
                    # Busca todas as notícias que já são '0', EXCETO a própria notícia que estamos salvando (caso seja uma edição)
                    noticias_antigas = Noticia.objects.filter(destaque='0').exclude(id=self.id)

                    # Atualiza todas as encontradas para '4'
                    # O metodo update() é eficiente pois faz tudo em uma única query no banco
                    noticias_antigas.update(destaque='4')

                # Chama o metodo save original para efetivar a gravação da notícia atual
                super().save(*args, **kwargs)
        ==================modo com fila rotativa de destaque====================
            def save(self, *args, **kwargs):
                if self.destaque in ['0', '1', '2', '3']:
                    # Convertemos para inteiro para poder fazer contas (loop)
                    nivel_novo = int(self.destaque)
                    with transaction.atomic():
                        # O Loop Mágico: Vamos do 3 descendo até o nível que inserimos.
                        # Exemplo: Se inserimos '0', o loop faz: 3->4, depois 2->3, depois 1->2, depois 0->1
                        for i in range(3, nivel_novo - 1, -1):
                            # Filtra as notícias do nível atual 'i'
                            # .exclude(pk=self.pk) impede que mexamos na notícia que estamos salvando agora (caso seja edição)
                            qs = Noticia.objects.filter(destaque=str(i)).exclude(pk=self.pk)
                            # Atualiza elas para o nível logo abaixo (i + 1)
                            qs.update(destaque=str(i + 1))
                super().save(*args, **kwargs)


         */
    }
}
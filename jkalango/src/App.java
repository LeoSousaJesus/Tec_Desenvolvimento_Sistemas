import java.util.ArrayList;
import java.util.List;

import br.com.jkalango.dto.Criador;

// Classe principal do aplicativo
// Contém o método main que inicia a execução do programa




public class App {
    public static void main(String[] args) throws Exception {
        
        List<Criador> criadores = new ArrayList<>();

        // Criando objetos da classe Criador
        Criador criador1 = new Criador("João", "joaobarroso@gmail.com", "(61)987654321", "Desenvolvedor");
        Criador criador2 = new Criador("Maria", "mariasilva@gmail.com", "(61)912345678", "Designer");
        Criador criador3 = new Criador("Carlos", "carlossousa2gmail.com", "(61)998877665", "Gerente de Projetos");
        Criador criador4 = new Criador("Ana", "anacortez@gmail.com", "(61)923456789", "Analista de Sistemas");
        Criador criador5 = new Criador("Pedro", "pedrosampaio@gmail.com", "(61)945678123", "Arquiteto de Software");
        Criador criador6 = new Criador("Luiza", "luizasantana@gmail.com", "(61)987123456", "Especialista em UX/UI");
        Criador criador7 = new Criador("Fernanda", "fernandaalmeida@gmail.com", "(61)912345678", "Gerente de Marketing");
        Criador criador8 = new Criador("Ricardo", "ricardotavarez@gmail.com", "(61)998877665", "Engenheiro de Dados");
        Criador criador9 = new Criador("Juliana", "julianaalbuquerque@gmail.com", "(61)923456789", "Cientista de Dados");
        Criador criador10 = new Criador("Roberto", "robertosantos@gmail.com", "(61)945678123", "Administrador de Sistemas");

        // Adicionando os criadores à lista
        criadores.add(criador1);
        criadores.add(criador2);
        criadores.add(criador3);
        criadores.add(criador4);
        criadores.add(criador5);
        criadores.add(criador6);
        criadores.add(criador7);
        criadores.add(criador8);
        criadores.add(criador9);
        criadores.add(criador10);

        // Exibindo o cabeçalho
        System.out.println("======================================");
        System.out.println("| Lista de Criadores de Conteúdo     |");
        System.out.println("======================================");
        // Exibindo os detalhes dos criadores
        for (Criador criador : criadores) {
            System.out.println("Nome: " + criador.getNome());
            System.out.println("Email: " + criador.getEmail());
            System.out.println("Telefone: " + criador.getTelefone());
            System.out.println("Perfil: " + criador.getPerfil());
            System.out.println("-------------------------------------");
        }
        
        /* 
        List<Genero> lista = new ArrayList<>();
        
            Genero g1 = new Genero("Action", "ação e aventura");
            Genero g2 = new Genero("Terror", "terror e suspense");
            Genero g3 = new Genero("RPG", "jogo de interpretação de papéis");
            Genero g4 = new Genero("Estrategy", "jogo de estratégia em tempo real");
            Genero g5 = new Genero("Simulation", "jogo de simulação de vida");
            Genero g6 = new Genero("Comedia", "jogo de comédia e humor");
        
        //adicionar
            
            lista.add(g1);
            lista.add(g2);
            lista.add(g3);
            lista.add(g4);
            lista.add(g5);
            lista.add(g6);
            lista.add(new Genero("Shooter", "jogo de tiro em primeira pessoa")); 

            System.out.println(lista);

        // Iterar = Looping = Repetição
        // Iterando e exibindo os elementos da lista - looping

        // Para Lista(Banco de Dados) - O for é indicado

        // Para uma Lógica complexa - O while é indicado

        for (Genero genero : lista) {
            System.out.println("Nome: " + genero.getName());
            System.out.println("Descrição: " + genero.getDescript());
            System.out.println("-------------------------------------");
        }
        */    

        // pesquisar

        // remover

        // alterar

        // Imprime cabeçalho




        // System.out.println("======================================");
        // System.out.println("|Criando objetos e atribuindo valores|");
        // System.out.println("======================================");

        // Cria objeto Genero sem nome e descrição
        /*Genero g1 = new Genero(null, null);
        g1.setName("ação"); // Define nome
        g1.setDescript("ação e aventura"); // Define descrição

        // Cria objeto Genero com nome e sem descrição
        Genero g2 = new Genero("terror", null);
        g2.setDescript("terror e suspense"); // Define descrição        

        // Cria objetos Genero com nome e descrição
        Genero g3 = new Genero("RPG", "jogo de interpretação de papéis");
        Genero g4 = new Genero("estratégia", "jogo de estratégia em tempo real");
        Genero g5 = new Genero("simulação", "jogo de simulação de vida");
        Genero g6 = new Genero("esporte", "jogo de esportes");
        Genero g7 = new Genero("corrida", "jogo de corrida de carros");
        Genero g8 = new Genero("luta", "jogo de luta");
        Genero g9 = new Genero("plataforma", "jogo de plataforma");
        Genero g10 = new Genero("puzzle", "jogo de quebra-cabeça");
        Genero g11 = new Genero("aventura", "jogo de aventura");
        Genero g12 = new Genero("educativo", "jogo educativo");
        Genero g13 = new Genero("multiplayer", "jogo multiplayer online");
        Genero g14 = new Genero("sandbox", "jogo de mundo aberto");
        Genero g15 = new Genero("horror", "jogo de horror psicológico");
        Genero g16 = new Genero("survival", "jogo de sobrevivência");
        Genero g17 = new Genero("simulação de voo", "jogo de simulação de voo");
        Genero g18 = new Genero("simulação de corrida", "jogo de simulação de corrida");

        // Imprime informações do primeiro objeto
        System.out.println("Primeiro objeto:");
        System.out.println("Nome: " + g1.getName());
        System.out.println("Descrição: " + g1.getDescript());
        System.out.println();
        
        // Imprime informações do segundo objeto
        System.out.println("Segundo objeto:");
        System.out.println("Nome: " + g2.getName());
        System.out.println("Descrição: " + g2.getDescript());
        System.out.println();
        
        // Imprime informações do terceiro objeto
        System.out.println("Terceiro objeto:");
        System.out.println("Nome: " + g3.getName());
        System.out.println("Descrição: " + g3.getDescript());
        System.out.println();
        
        // Imprime informações do quarto objeto
        System.out.println("Quarto objeto:");
        System.out.println("Nome: " + g4.getName());
        System.out.println("Descrição: " + g4.getDescript());
        System.out.println();
        
        // Imprime informações do quinto objeto
        System.out.println("Quinto objeto:");
        System.out.println("Nome: " + g5.getName());
        System.out.println("Descrição: " + g5.getDescript());
        System.out.println();
        
        // Imprime informações do sexto objeto
        System.out.println("Sexto objeto:");
        System.out.println("Nome: " + g6.getName());
        System.out.println("Descrição: " + g6.getDescript());
        System.out.println();
        
        // Imprime informações do sétimo objeto
        System.out.println("Sétimo objeto:");
        System.out.println("Nome: " + g7.getName());
        System.out.println("Descrição: " + g7.getDescript());
        System.out.println();
        
        // Imprime informações do oitavo objeto
        System.out.println("Oitavo objeto:");
        System.out.println("Nome: " + g8.getName());
        System.out.println("Descrição: " + g8.getDescript());
        System.out.println();
        
        // Imprime informações do nono objeto
        System.out.println("Nono objeto:");
        System.out.println("Nome: " + g9.getName());
        System.out.println("Descrição: " + g9.getDescript());
        System.out.println();
        
        // Imprime informações do décimo objeto
        System.out.println("Décimo objeto:");
        System.out.println("Nome: " + g10.getName());
        System.out.println("Descrição: " + g10.getDescript());
        System.out.println();
        
        // Imprime informações do décimo primeiro objeto
        System.out.println("Décimo primeiro objeto:");
        System.out.println("Nome: " + g11.getName());
        System.out.println("Descrição: " + g11.getDescript());
        System.out.println();
        
        // Imprime informações do décimo segundo objeto
        System.out.println("Décimo segundo objeto:");
        System.out.println("Nome: " + g12.getName());
        System.out.println("Descrição: " + g12.getDescript());
        System.out.println();
        
        // Imprime informações do décimo terceiro objeto
        System.out.println("Décimo terceiro objeto:");
        System.out.println("Nome: " + g13.getName());
        System.out.println("Descrição: " + g13.getDescript());
        System.out.println();
        
        // Imprime informações do décimo quarto objeto
        System.out.println("Décimo quarto objeto:");
        System.out.println("Nome: " + g14.getName());
        System.out.println("Descrição: " + g14.getDescript());
        System.out.println();
        
        // Imprime informações do décimo quinto objeto
        System.out.println("Décimo quinto objeto:");
        System.out.println("Nome: " + g15.getName());
        System.out.println("Descrição: " + g15.getDescript());
        System.out.println();
        
        // Imprime informações do décimo sexto objeto
        System.out.println("Décimo sexto objeto:");
        System.out.println("Nome: " + g16.getName());
        System.out.println("Descrição: " + g16.getDescript());
        System.out.println();
        
        // Imprime informações do décimo sétimo objeto
        System.out.println("Décimo sétimo objeto:");
        System.out.println("Nome: " + g17.getName());
        System.out.println("Descrição: " + g17.getDescript());
        System.out.println();
        
        // Imprime informações do décimo oitavo objeto
        System.out.println("Décimo oitavo objeto:");
        System.out.println("Nome: " + g18.getName());
        System.out.println("Descrição: " + g18.getDescript());        
        System.out.println();
        */
    }
}
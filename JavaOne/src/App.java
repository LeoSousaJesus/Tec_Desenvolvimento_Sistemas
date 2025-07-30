

public class App {
    public static void main(String[] args) throws Exception {
        System.out.println("======================================");
        System.out.println("|Criando objetos e atribuindo valores|");
        System.out.println("======================================");

        Genero g1 = new Genero(null, null);
        g1.setName("ação");
        g1.setDescript("ação e aventura");

        Genero g2 = new Genero("terror", null);
        g2.setDescript("terror e suspense");        

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

        System.out.println("Primeiro objeto:");
        System.out.println("Nome: " + g1.getName());
        System.out.println("Descrição: " + g1.getDescript());
        System.out.println();
        
        System.out.println("Segundo objeto:");
        System.out.println("Nome: " + g2.getName());
        System.out.println("Descrição: " + g2.getDescript());
        System.out.println();
        
        System.out.println("Terceiro objeto:");
        System.out.println("Nome: " + g3.getName());
        System.out.println("Descrição: " + g3.getDescript());
        System.out.println();
        
        System.out.println("Quarto objeto:");
        System.out.println("Nome: " + g4.getName());
        System.out.println("Descrição: " + g4.getDescript());
        System.out.println();
        
        System.out.println("Quinto objeto:");
        System.out.println("Nome: " + g5.getName());
        System.out.println("Descrição: " + g5.getDescript());
        System.out.println();
        
        System.out.println("Sexto objeto:");
        System.out.println("Nome: " + g6.getName());
        System.out.println("Descrição: " + g6.getDescript());
        System.out.println();
        
        System.out.println("Sétimo objeto:");
        System.out.println("Nome: " + g7.getName());
        System.out.println("Descrição: " + g7.getDescript());
        System.out.println();
        
        System.out.println("Oitavo objeto:");
        System.out.println("Nome: " + g8.getName());
        System.out.println("Descrição: " + g8.getDescript());
        System.out.println();
        
        System.out.println("Nono objeto:");
        System.out.println("Nome: " + g9.getName());
        System.out.println("Descrição: " + g9.getDescript());
        System.out.println();
        
        System.out.println("Décimo objeto:");
        System.out.println("Nome: " + g10.getName());
        System.out.println("Descrição: " + g10.getDescript());
        System.out.println();
        
        System.out.println("Décimo primeiro objeto:");
        System.out.println("Nome: " + g11.getName());
        System.out.println("Descrição: " + g11.getDescript());
        System.out.println();
        
        System.out.println("Décimo segundo objeto:");
        System.out.println("Nome: " + g12.getName());
        System.out.println("Descrição: " + g12.getDescript());
        System.out.println();
        
        System.out.println("Décimo terceiro objeto:");
        System.out.println("Nome: " + g13.getName());
        System.out.println("Descrição: " + g13.getDescript());
        System.out.println();
        
        System.out.println("Décimo quarto objeto:");
        System.out.println("Nome: " + g14.getName());
        System.out.println("Descrição: " + g14.getDescript());
        System.out.println();
        
        System.out.println("Décimo quinto objeto:");
        System.out.println("Nome: " + g15.getName());
        System.out.println("Descrição: " + g15.getDescript());
        System.out.println();
        
        System.out.println("Décimo sexto objeto:");
        System.out.println("Nome: " + g16.getName());
        System.out.println("Descrição: " + g16.getDescript());
        System.out.println();
        
        System.out.println("Décimo sétimo objeto:");
        System.out.println("Nome: " + g17.getName());
        System.out.println("Descrição: " + g17.getDescript());
        System.out.println();
        
        System.out.println("Décimo oitavo objeto:");
        System.out.println("Nome: " + g18.getName());
        System.out.println("Descrição: " + g18.getDescript());        
        System.out.println();
    }
}

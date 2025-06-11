package Aula_Java.Biblioteca;

    public class Usuario {
        private int id;
        private String nome;
        private String email;
        private String telefone;
        private String tipo_usuario;


        public Usuario(int id, String nome, String email, String telefone, String tipo_usuario) {
            this.id = id;
            this.nome = nome;
            this.email = email;
            this.telefone = telefone;
            this.tipo_usuario = tipo_usuario;
        }

        public void setId(int id) {
            this.id = id;
        }
        public int getId() {
            return id;
        }

        public String getNome() {
            return nome;
        }

        public void setNome(String nome) {
            this.nome = nome;
        }

        public String getEmail() {
            return email;
        }

        public void setEmail(String email) {
            this.email = email;
        }

        public String getTelefone() {
            return telefone;
        }

        public void setTelefone(String telefone) {
            this.telefone = telefone;
        }

        public String getTipo_usuario() {
            return tipo_usuario;
        }

        public void setTipo_usuario(String tipo_usuario) {
            this.tipo_usuario = tipo_usuario;
        }


    }
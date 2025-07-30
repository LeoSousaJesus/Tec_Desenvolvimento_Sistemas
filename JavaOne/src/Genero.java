public class Genero {
    private String name;
    private String descript;


    public Genero(String name, String descript) {
        this.descript = descript;
        this.name = name;
    }

    public String getName(){
        return name;
    }

    public String getDescript(){
        return descript;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setDescript(String descript) {
        this.descript = descript;
    }
}

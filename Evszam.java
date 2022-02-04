
package tortenelem;

/**
 *
 * @author Czégel Vanessza
 */
public class Evszam {
    private int id;
    private int ev;
    private String esemeny;

    public Evszam(int id, int ev, String esemeny) {
        this.id = id;
        this.ev = ev;
        this.esemeny = esemeny;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setEv(int ev) {
        this.ev = ev;
    }

    public void setEsemeny(String esemeny) {
        this.esemeny = esemeny;
    }

    public int getId() {
        return id;
    }

    public int getEv() {
        return ev;
    }

    public String getEsemeny() {
        return esemeny;
    }
    
}

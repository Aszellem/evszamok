package tortenelem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javafx.collections.ObservableList;
import panel.Panel;

/**
 *
 * @author Czégel Vanessza
 */
public class DB {

    final String db = "jdbc:mysql://localhost:3306/tortenelem" + "?useUnicode=true&characterEncoding=UTF-8";
    final String user = "tanulo";
    final String pass = "tanulo";

    public void beolvas(ObservableList<Evszam> tabla, String s) {
        
        try (Connection kapcs = DriverManager.getConnection(db, user, pass);
                PreparedStatement ps = kapcs.prepareStatement(s)) {
            tabla.clear();
            ResultSet eredmeny = ps.executeQuery();
            while (eredmeny.next()) {
                tabla.add(new Evszam(
                        eredmeny.getInt("evId"),
                        eredmeny.getInt("ev"),
                        eredmeny.getString("esemeny")
                ));
            }
         
        } catch (Exception ex) {
            Panel.hiba("Nem tudja megjelenítani!", ex.getMessage());
        }
    }
    
    public int hozzaad(int ev, String esemeny){
        String s = "INSERT INTO evszamok (ev,esemeny) VALUES (?,?)";
        
        try (Connection kapcs = DriverManager.getConnection(db,user,pass);
                PreparedStatement ps = kapcs.prepareStatement(s)){
            ps.setInt(1, ev);
            ps.setString(2, esemeny);
            return ps.executeUpdate();
        } catch (Exception ex) {
            Panel.hiba("Hiba!", ex.getMessage());
            return 0;
        }
    }
    
    public int modosit(int id, int ev, String esemeny){
        String s = "UPDATE evszamok SET ev =?, esemeny=? WHERE evid=?";
        
        try (Connection kapcs = DriverManager.getConnection(db,user,pass);
                PreparedStatement ps = kapcs.prepareStatement(s)) {
            ps.setInt(1, ev);
            ps.setString(2, esemeny);
            ps.setInt(3, id);
            return ps.executeUpdate();
            
        } catch (Exception ex) {
            Panel.hiba("Hiba!", ex.getMessage());
            return 0;
        }
    }
    
    public int torol(int id){
        String s = "DELETE FROM evszamok WHERE evid=?";
        
        try (Connection kapcs = DriverManager.getConnection(db,user,pass);
                PreparedStatement ps = kapcs.prepareStatement(s)) {
            ps.setInt(1, id);
            return ps.executeUpdate();
            
        } catch (Exception ex) {
            Panel.hiba("Hiba!", ex.getMessage());
            return 0;
        }
    }
}

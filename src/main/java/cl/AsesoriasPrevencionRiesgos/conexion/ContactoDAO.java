package cl.AsesoriasPrevencionRiesgos.conexion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.DriverManager;

import cl.AsesoriasPrevencionRiesgos.modelo.Contacto;

/**
 * 
 * Clase DAO para Contacto, se encarga de realizar conexion hacia la base de datos
 * MySQL, envia y recibe informacion desde y hacia el servlet. 
 * 
 * @version 1.0
 * @author Equipo Grupo 4
 *         - Karen Fernandez
 *         - Jose Miguel Maldonado
 *         - Marcos Lepin
 *         - Patricio Sanhueza
 *         - Ariel Rodriguez
 * 
 */

public class ContactoDAO {
	
	private static ContactoDAO instancia;
    private Connection conexion;

    
    /**
     * Establece una unica conexión a la base de datos en el constructor privado
     * 
     */
    private ContactoDAO() {
        // Establecer la conexión a la base de datos en el constructor privado
        // Usar Singleton para asegurar que solo haya una instancia de UsuarioDAO
        // y una única conexión a la base de datos en todo el proyecto
        conexion = obtenerConexion(); // Implementar este método
    }

    /**
     * Genera nueva instancia de DAO, si ya existe una iniciada
     * la retorna.
     *
     * @return Retorna la instancia unica de DAO.
     */
    public static ContactoDAO getInstancia() {
        if (instancia == null) {
            instancia = new ContactoDAO();
        }
        return instancia;
    }

    
    // Métodos CRUD
    

   
    /**
     * Agrega la informacion del formulario de contacto a la BD.
     *
     * @param contacto Objeto de tipo Contacto.
     */
    public void enviarContacto(Contacto contacto) {
        String consulta = "INSERT INTO contacto (nombre,correo,mensaje)"
        		+ " VALUES (?, ?, ?)";

        try (
        		
        	PreparedStatement statement = conexion.prepareStatement(consulta)) {
            statement.setString(1, contacto.getNombre());
            statement.setString(2, contacto.getCorreo());
            statement.setString(3, contacto.getMensaje());       
            
            statement.executeUpdate();
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

   
    /**
     * Genera una conexion a la BD.
     *
     * @return Retorna una conexion hacia la BD.
     */
    private Connection obtenerConexion() {
        Connection conexion = null;
        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/prevencion_riesgos";
            String usuario = "adminasesorias";
            String password = "asesorias123";
            
            conexion = DriverManager.getConnection(url, usuario, password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conexion;
    }
    

}

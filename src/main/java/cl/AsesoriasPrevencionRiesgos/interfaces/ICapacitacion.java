package cl.AsesoriasPrevencionRiesgos.interfaces;

import java.util.List;

import cl.AsesoriasPrevencionRiesgos.modelo.Capacitacion;

/**
 * Esta interfaz define los métodos CRUD de Capacitacion.
 * Estos metodos deben ser implementados a traves de CapacitacionImp.
 *
 * @version 1.0
 * @author Equipo Grupo 4
 *         - Karen Fernandez
 *         - Jose Miguel Maldonado
 *         - Marcos Lepin
 *         - Patricio Sanhueza
 *         - Ariel Rodriguez
 */

public interface ICapacitacion {
	
	public List<Capacitacion> listaCapacitaciones();
	
	public Capacitacion listarCapacitacionPorId(int id);
	
	public void registraCapacitacion(Capacitacion capacitacion);
	
	public void actualizarCapacitacion(Capacitacion capacitacion);
	
	public void eliminarCapacitacion(int id);

}

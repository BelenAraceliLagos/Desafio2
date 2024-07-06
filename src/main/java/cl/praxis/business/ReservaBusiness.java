package cl.praxis.business;

import java.util.ArrayList;
import java.util.List;

import cl.praxis.model.Reserva;

public class ReservaBusiness {

	
	public List<Reserva> getReservas() {

		ArrayList<Reserva> reservas = new ArrayList<Reserva>();

		Reserva reserva1 = new Reserva();
		reserva1.setId(1);
		reserva1.setNombre("Habitacion 1, Simple");
		reserva1.setDescripcion("Habitación clásica con cama extragrande, vistas al oceano y valcon");
		reserva1.setImagen(
				"https://cache.marriott.com/content/dam/marriott-renditions/KNASI/knasi-classic-room-5577-hor-clsc.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=1336px:*");
		reserva1.setPrecio(10000);
		
		Reserva reserva2 = new Reserva();
		reserva2.setId(2);
		reserva2.setNombre("Habitacion 2, Doble-Simple");
		reserva2.setDescripcion("Habitación clasica con dos camas grandes o dobles, vistas al oceano y valcon");
		reserva2.setImagen("https://cache.marriott.com/content/dam/marriott-renditions/KNASI/knasi-classic-room-5576-hor-clsc.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=1336px:*");
		reserva2.setPrecio(20000);
		
		Reserva reserva3 = new Reserva();
		reserva3.setId(3);
		reserva3.setNombre("Habitación 3, Doble-Normal");
		reserva3.setDescripcion("Habitación superior en planta alta con vistas al oceano y valcon");
		reserva3.setImagen("https://cache.marriott.com/content/dam/marriott-renditions/KNASI/knasi-king-suite-5582-hor-clsc.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=1336px:*");
		reserva3.setPrecio(30000);
		
		Reserva reserva4 = new Reserva();
		reserva4.setId(4);
		reserva4.setNombre("Habitación 4, Doble-King");
		reserva4.setDescripcion("Suiite Excecutive en planta superior con cama extra grande y vistas al oceano");
		reserva4.setImagen(
				"https://cache.marriott.com/content/dam/marriott-renditions/KNASI/knasi-junior-suite-5578-hor-clsc.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=1336px:*");
		reserva4.setPrecio(40000);
		
		Reserva reserva5 = new Reserva();
		reserva5.setId(5);
		reserva5.setNombre("Habitación 5, Doble-King");
		reserva5.setDescripcion("Suiite Excecutive en planta superior con cama extra grande y vistas al oceano");
		reserva5.setImagen(
				"https://cache.marriott.com/content/dam/marriott-renditions/KNASI/knasi-junior-suite-5578-hor-clsc.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=1336px:*");
		reserva5.setPrecio(50000);
		
		Reserva reserva6 = new Reserva();
		reserva6.setId(6);
		reserva6.setNombre("Habitación 6, Doble-King");
		reserva6.setDescripcion("Suiite Excecutive en planta superior con cama extra grande y vistas al oceano");
		reserva6.setImagen(
				"https://cache.marriott.com/content/dam/marriott-renditions/KNASI/knasi-classic-room-5576-hor-clsc.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=1336px:*");
		reserva6.setPrecio(60000);
		
		Reserva reserva7 = new Reserva();
		reserva7.setId(7);
		reserva7.setNombre("Habitación 7, Doble-King");
		reserva7.setDescripcion("Suiite Excecutive en planta superior con cama extra grande y vistas al oceano");
		reserva7.setImagen(
				"https://cache.marriott.com/content/dam/marriott-renditions/KNASI/knasi-lobby-terrace-5585-hor-wide.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=375px:*");
		reserva7.setPrecio(70000);
		
		Reserva reserva8 = new Reserva();
		reserva8.setId(8);
		reserva8.setNombre("Habitación 8, Doble-King");
		reserva8.setDescripcion("Suiite Excecutive en planta superior con cama extra grande y vistas al oceano");
		reserva8.setImagen(
				"https://cache.marriott.com/content/dam/marriott-renditions/KNASI/knasi-foyer-level-5561-hor-wide.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=375px:*");
		reserva8.setPrecio(80000);
		
		reservas.add(reserva1);
		reservas.add(reserva2);
		reservas.add(reserva3);
		reservas.add(reserva4);
		reservas.add(reserva5);
		reservas.add(reserva6);
		reservas.add(reserva7);
		reservas.add(reserva8);

		return reservas;
	}

	
	public Reserva getReservabyID(Reserva reserva) {

		List<Reserva> listaReservas = getReservas();

		for (int x = 0; x < listaReservas.size(); x++) {

			if (listaReservas.get(x).getId() == reserva.getId()) {
				reserva = listaReservas.get(x);
			}
		}

		return reserva;
	}

	
	public int calculaValorCompra(int valorReserva, int cantidadDias) {
		int valor = valorReserva * cantidadDias;
		return valor;
	}

}

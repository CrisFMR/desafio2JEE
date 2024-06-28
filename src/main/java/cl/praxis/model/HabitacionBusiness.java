package cl.praxis.model;
import java.util.ArrayList;
import java.util.List;

public class HabitacionBusiness {
	public List<Habitacion> getHabitaciones() {
		
		//--Creación ArrayList--
		ArrayList<Habitacion> habitacion = new ArrayList<Habitacion>();
		
		//--Habitacion 1--
		Habitacion habitacion1 = new Habitacion();
		habitacion1.setId(1);
		habitacion1.setNombre("Simple");
		habitacion1.setDescripcion("Habitación Clásica con cama extragrande, vista al centro ó cordillera de la costa, cuenta con balcón");
		habitacion1.setImagen("https://cache.marriott.com/content/dam/marriott-renditions/SCLSI/sclsi-club-room-9189-hor-wide.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=1336px:*");
		habitacion1.setPrecio(10000);
		habitacion1.setHabitaciones(1);
		habitacion1.setMetraje(10);
		//--Habitacion 2--
		Habitacion habitacion2 = new Habitacion();
		habitacion2.setId(2);
		habitacion2.setNombre("Doble Simple");
		habitacion2.setDescripcion("Habitación Clásica con 2 camas Grandes o Dobles, vista al centro ó cordillera de la costa, cuenta con balcón");
		habitacion2.setImagen("https://cache.marriott.com/content/dam/marriott-renditions/SCLSI/sclsi-classic-room-9123-hor-wide.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=1336px:*");
		habitacion2.setPrecio(20000);
		habitacion2.setHabitaciones(2);
		habitacion2.setMetraje(12);
		//--Habitacion 3--
		Habitacion habitacion3 = new Habitacion();
		habitacion3.setId(3);
		habitacion3.setNombre("Doble Normal");
		habitacion3.setDescripcion("Habitación Superior en planta alta con 2 camas Dobles, vistas al centro ó cordillera de la costa");
		habitacion3.setImagen("https://cache.marriott.com/is/image/marriotts7prod/si-sclsi-club-twin-room-20262:Wide-Hor?wid=1336&fit=constrain");
		habitacion3.setPrecio(30000);
		habitacion3.setHabitaciones(3);
		habitacion3.setMetraje(15);
		//--Habitacion 4--
		Habitacion habitacion4 = new Habitacion();
		habitacion4.setId(4);
		habitacion4.setNombre("Doble King");
		habitacion4.setDescripcion("Suit Executive en planta superior con cama extragrande, vistas al centro ó cordillera de la costa");
		habitacion4.setImagen("https://cache.marriott.com/content/dam/marriott-renditions/SCLSI/sclsi-club-room-9121-hor-wide.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=1336px:*");
		habitacion4.setPrecio(40000);
		habitacion4.setHabitaciones(4);
		habitacion4.setMetraje(18);
		//--Habitación 5--
		Habitacion habitacion5 = new Habitacion();
		habitacion5.setId(5);
		habitacion5.setNombre("Doble King");
		habitacion5.setDescripcion("Suit Executive en planta superior con cama extragrande, vistas al centro ó cordillera de la costa");
		habitacion5.setImagen("https://cache.marriott.com/is/image/marriotts7prod/si-sclsi-king-guestroom---poolview-27528:Wide-Hor?wid=1336&fit=constrain");
		habitacion5.setPrecio(50000);
		habitacion5.setHabitaciones(5);
		habitacion5.setMetraje(20);
		//--Habitación 6--
		Habitacion habitacion6 = new Habitacion();
		habitacion6.setId(6);
		habitacion6.setNombre("Doble King");
		habitacion6.setDescripcion("Suit Executive en planta superior con cama extragrande, vistas al centro ó cordillera de la costa");
		habitacion6.setImagen("https://cache.marriott.com/content/dam/marriott-renditions/SCLSI/sclsi-club-suite-9186-hor-wide.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=1336px:*");
		habitacion6.setPrecio(60000);
		habitacion6.setHabitaciones(6);
		habitacion6.setMetraje(25);
		//--Habitación 7--
		Habitacion habitacion7 = new Habitacion();
		habitacion7.setId(7);
		habitacion7.setNombre("Doble King");
		habitacion7.setDescripcion("Suit Executive eb planta superior con cama extragrande, vistas al centro ó cordillera de la costa");
		habitacion7.setImagen("https://cache.marriott.com/is/image/marriotts7prod/si-sclsi-presidential-suite-room-17448:Wide-Hor?wid=1336&fit=constrain");
		habitacion7.setPrecio(70000);
		habitacion7.setHabitaciones(7);
		habitacion7.setMetraje(25);
		//--Habitación 8--
		Habitacion habitacion8 = new Habitacion();
		habitacion8.setId(8);
		habitacion8.setNombre("Doble King");
		habitacion8.setDescripcion("Suit Executive en planta superior con cama extragrande, vistas al centro ó cordillera de la costa");
		habitacion8.setImagen("https://cache.marriott.com/content/dam/marriott-renditions/SCLSI/sclsi-presidential-suite-9190-hor-wide.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=1336px:*");
		habitacion8.setPrecio(80000);
		habitacion8.setHabitaciones(8);
		habitacion8.setMetraje(30);
		
		//--Creación de lista--
		habitacion.add(habitacion1);
		habitacion.add(habitacion2);
		habitacion.add(habitacion3);
		habitacion.add(habitacion4);
		habitacion.add(habitacion5);
		habitacion.add(habitacion6);
		habitacion.add(habitacion7);
		habitacion.add(habitacion8);
		return habitacion;
	}
	  //--Método para calcular valor--
	public int Valor(int valorHabitacion, int cantidadHabitaciones) {
		int valor = valorHabitacion * cantidadHabitaciones;
		return valor;
		}
	 //--Método para obtener habitaciones--
	public Habitacion getHabitacionbyID(Habitacion habitacion) {
		List<Habitacion> listaHabitacion = getHabitaciones();
		for (int i = 0; i < listaHabitacion.size(); i++) {
			if (listaHabitacion.get(i).getId() == habitacion.getId()) {
				habitacion = listaHabitacion.get(i);
				}
		}return habitacion;
	}
}


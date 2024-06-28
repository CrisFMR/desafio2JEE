package cl.praxis.model;

public class Habitacion {
	private int id;
	private String nombre;
	private String descripcion;
	private String imagen;
	private String email;
	private int precio;
	private int habitaciones;
	private int metraje;

	//--Contructor Void--
	public Habitacion() {
	}
	
	//--Constructor with Fields--
	public Habitacion(int id, String nombre, String descripcion, String imagen, String email, int precio,
			int habitaciones, int metraje) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.imagen = imagen;
		this.email = email;
		this.precio = precio;
		this.habitaciones = habitaciones;
		this.metraje = metraje;
	}

	//--Getters & Setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getImagen() {
		return imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getPrecio() {
		return precio;
	}

	public void setPrecio(int precio) {
		this.precio = precio;
	}

	public int getHabitaciones() {
		return habitaciones;
	}

	public void setHabitaciones(int habitaciones) {
		this.habitaciones = habitaciones;
	}

	public int getMetraje() {
		return metraje;
	}

	public void setMetraje(int metraje) {
		this.metraje = metraje;
	}	
}
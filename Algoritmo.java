import java.io.*;
import java.sql.*;
import java.util.*;

public class Algoritmo {
	private Connection connection=null;
	String serverAddress = "77.104.160.115";
	String db = "onlyf1st_mantenimiento";
	String user = "onlyf1st_root";
	String pass = "mantenimiento";
	String url = "jdbc:mysql://" + serverAddress + "/" + db;

	private void conectar() throws SQLException, ClassNotFoundException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection=(Connection)DriverManager.getConnection(url, user, pass);
			if(connection!=null) {
				System.out.println("Conectado a la base de datos!");
			}
		}
		catch(SQLException e) {
			System.out.println("No se ha podido conectar a la BD");

		}
		catch(ClassNotFoundException e) {
			System.out.println(e);
		}

		try {
			//new MessageSender().run(); 
			Statement st2 = connection.createStatement(); //Creamos un statement con la conexion
			Statement st3 = connection.createStatement();
			ResultSet rs2 = st2.executeQuery("SELECT Sensor.IdPieza, Sensor.IdSensor, Sensor.Color FROM Sensor");//Formamos la query con la consulta que queremos hacer

			while (rs2.next()) { //Bucle para ir avanzando en la query
				String idSensor = rs2.getString("Sensor.IdSensor"); //Sacamos el id del sensor
				String idPieza = rs2.getString("Sensor.IdPieza"); //Sacamos la pieza donde esta el sensor
				String color = rs2.getString("Sensor.Color"); //Sacamos el color del sensor

				System.out.println(idSensor);
				System.out.println(idPieza);
				System.out.println("Color del sensor antes de analizarlo: " +color);

				Random rand = new Random();
				double temperature = 10 + 20*rand.nextDouble(); //Grados
				double humedad = 15*rand.nextDouble(); //Dado en %

				System.out.println(humedad);
				System.out.println(temperature);

				if(idSensor.equals("Humedad")) {

					if ( humedad >= 0 && humedad < 5 ){
						String color_final = "verde";
						PreparedStatement ps = connection.prepareStatement("UPDATE `Sensor` SET `Color`= ? WHERE `IdPieza` = ?");
						ps.setString(1, color_final);
						ps.setString(2, idPieza);
						ps.executeUpdate();
						ps.close();
						System.out.println("Color del sensor después de analizarlo: " + color_final);
					}

					else {
						if( humedad >= 5 && humedad < 10 ) {
							String color_final = "naranja";
							PreparedStatement ps = connection.prepareStatement("UPDATE `Sensor` SET `Color`= ? WHERE `IdPieza` = ?");
							ps.setString(1, color_final);
							ps.setString(2, idPieza);
							ps.executeUpdate();
							ps.close();
							System.out.println("Color del sensor después de analizarlo: " +color_final);
						}
						else {
							if( humedad >= 10 ) {
								String color_final = "rojo";
								PreparedStatement ps = connection.prepareStatement("UPDATE `Sensor` SET `Color`= ? WHERE `IdPieza` = ?");
								ps.setString(1, color_final);
								ps.setString(2, idPieza);
								ps.executeUpdate();
								ps.close();
								System.out.println("Color del sensor después de analizarlo: " + color_final);
							}
						}
					}

				}
				else {
					if(idSensor.equals("Temperatura")) {
						if ( (temperature < 14) || (temperature > 26) ){
							String color_final = "rojo";
							PreparedStatement ps = connection.prepareStatement("UPDATE `Sensor` SET `Color`= ? WHERE `IdPieza` = ?");
							ps.setString(1, color_final);
							ps.setString(2, idPieza);
							ps.executeUpdate();
							ps.close();
							System.out.println("Color del sensor después de analizarlo: " +color_final);
						}
						else if ( (temperature >= 14 && temperature < 18) || (temperature > 22 && temperature <= 26) ){
							String color_final = "naranja";
							PreparedStatement ps = connection.prepareStatement("UPDATE `Sensor` SET `Color`= ? WHERE `IdPieza` = ?");
							ps.setString(1, color_final);
							ps.setString(2, idPieza);
							ps.executeUpdate();
							ps.close();
								System.out.println("Color del sensor después de analizarlo: " +color_final);
							}
							else if ( (temperature >= 18 && temperature <= 22) ){
								String color_final = "verde";
								PreparedStatement ps = connection.prepareStatement("UPDATE `Sensor` SET `Color`= ? WHERE `IdPieza` = ?");
								ps.setString(1, color_final);
								ps.setString(2, idPieza);
								ps.executeUpdate();
								ps.close();
									System.out.println("Color del sensor después de analizarlo: " +color_final);
								}
							}
					else {
						System.out.println("ERROR");
					}
				}
			}

			st2.close();
			st3.close();
			rs2.close();
			exit();

		}  catch (SQLException e) {
			System.out.println("No se pudo realizar la operacion");
			System.out.println("Mensaje de error: " + e.getMessage());
			System.out.println("Codigo de error: " + e.getErrorCode());
			System.out.println("Estado SQL: " + e.getSQLState());
		} catch (Exception e) {
			System.out.println("Se produjo un error inesperado: " + e.getMessage());
		}

	}

	private void exit() throws SQLException {
		System.out.println("Saliendo.. �hasta otra!");
		connection.close();
		System.exit(0);
	}

	public static void main(String args[]) {
		Algoritmo algoritmos= new Algoritmo();


		try {
			algoritmos.conectar();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

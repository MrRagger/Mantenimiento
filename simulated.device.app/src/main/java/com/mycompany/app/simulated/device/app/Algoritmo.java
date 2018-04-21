package com.mycompany.app.simulated.device.app;

import java.sql.*;



import com.mycompany.app.simulated.device.app.App.MessageSender;



public class Algoritmo {
	private Connection connection=null;
	String serverAddress = "77.104.160.115";
	String db = "onlyf1st_mantenimiento";
	String user = "onlyf1st_root";
	String pass = "mantenimiento";
	String url = "jdbc:mysql://" + serverAddress + "/" + db;
	public Algoritmo() {
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
	}

	public void exit() throws SQLException {
		System.out.println("Saliendo.. ï¿œhasta otra!");
		connection.close();
		System.exit(0);
	}

	public void conectar() throws SQLException, ClassNotFoundException {

 
		try {
			//new MessageSender().run(); 
			Statement st2 = connection.createStatement(); //Creamos un statement con la conexiï¿œn
			ResultSet rs2 = st2.executeQuery("SELECT Sensor.IdPieza, Sensor.IdSensor, Sensor.Color FROM Sensor");//Formamos la query con la consulta que queremos hacer
			
			while (rs2.next()) { //Bucle para ir avanzando en la query
				String id = rs2.getString("Sensor.IdSensor"); //Sacamos el id del sensor
				String pieza = rs2.getString("Sensor.IdPieza"); //Sacamos la pieza donde esta el sensor
				String color = rs2.getString("Sensor.Color"); //Sacamos el color del sensor

				new MessageSender().run(); //Medido en %
				double humedad = 0;
				double temperature=0;
				//Medido en kg/cm2
				//System.out.println(temperature);
				if(pieza=="Temperature") {
					if ((7 <= temperature) && (temperature<= 10)){
						ResultSet colorSensor=st2.executeQuery("UPDATE Sensor SET Color='Verde' WHERE IdSensor=id AND IdPieza='pieza'");
						
						colorSensor.close();
					}

					else { if(((10 < temperature)&&  (temperature< 15)) || ((2 < temperature)&&(temperature < 7))) { 

						ResultSet colorSensor=st2.executeQuery("UPDATE Sensor SET Color='Naranja' WHERE IdSensor=id AND IdPieza='pieza'");
						
						colorSensor.close();
					}
					else {
						ResultSet colorSensor=st2.executeQuery("UPDATE Sensor SET Color='Rojo' WHERE IdSensor=id AND IdPieza='pieza'");
						colorSensor.close();
					}
					}
				}
				if(pieza=="Humedad") {
					if ((40 < humedad )&&(humedad<= 60) ){
						ResultSet colorSensor=st2.executeQuery("UPDATE Sensor SET Color='Verde' WHERE IdSensor=id AND IdPieza='pieza'");
						colorSensor.close();
					}
					else {
						if( (60 < humedad)&& (humedad < 75)) {

							ResultSet colorSensor=st2.executeQuery("UPDATE Sensor SET Color='Naranja' WHERE IdSensor=id AND IdPieza='pieza'");
							colorSensor.close();
						}
						else {
							ResultSet colorSensor=st2.executeQuery("UPDATE Sensor SET Color='Rojo' WHERE IdSensor=id AND IdPieza='pieza'");

							colorSensor.close();
						}

					}

				}

				
			}
			
			st2.close();
		rs2.close();


		}  catch (SQLException e) {
			System.out.println("No se pudo realizar la operacion");
			System.out.println("Mensaje de error: " + e.getMessage());
			System.out.println("Codigo de error: " + e.getErrorCode());
			System.out.println("Estado SQL: " + e.getSQLState());
		} 


          
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

package com.mycompany.app.simulated.device.app;
import java.io.InputStreamReader;
import java.io.BufferedReader;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.mysql.jdbc.Driver;

import com.mycompany.app.simulated.device.app.App.MessageSender;



public class Algoritmo {
	private Connection connection;
	public Algoritmo() {
		try {
			conectar();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	private void exit() throws SQLException {
		System.out.println("Saliendo.. �hasta otra!");
		connection.close();
		System.exit(0);
	}
	private void conectar() throws SQLException, ClassNotFoundException {
		String drv = "com.mysql.jdbc.Driver";
		Class.forName(drv);

		String serverAddress = "77.104.160.115";
		String db = "onlyf1st_mantenimiento";
		String user = "onlyf1st_root";
		String pass = "mantenimiento";
		String url = "jdbc:mysql://" + serverAddress + "/" + db;
		connection = DriverManager.getConnection(url, user, pass);
		System.out.println("Conectado a la base de datos!");
	}
	void analizarDatos() throws SQLException {
		Statement st2 = connection.createStatement(); //Creamos un statement con la conexi�n
		ResultSet rs2 = st2.executeQuery("SELECT Sensor.IdPieza, Sensor.IdSensor, Sensor.Color from Sensor;");//Formamos la query con la consulta que queremos hacer
		while (rs2.next()) { //Bucle para ir avanzando en la query
			String id = rs2.getString("Sensor.IdSensor"); //Sacamos el id del sensor
			String pieza = rs2.getString("Sensor.IdPieza"); //Sacamos la pieza donde esta el sensor
			//String color = rs2.getString("Sensor.Color"); //Sacamos el color del sensor
               //System.out.println(id);
			double humedad=MessageSender.sensor.getHumidity(); //Medido en %
			System.out.println(humedad);
			double temperature=MessageSender.sensor.getTemperature(); //Medido en kg/cm2

		if(pieza=="Temperature") {
				if ((7 <= temperature) && (temperature<= 10)){
					ResultSet colorSensor=st2.executeQuery("UPDATE Sensor SET Color='Verde' WHERE IdSensor=id AND IdPieza='pieza';");
				System.out.println(colorSensor);
				}
				else {
					   if(((10 < temperature)&&  (temperature< 15)) || ((2 < temperature)&&(temperature < 7))) { 
				
						   ResultSet colorSensor=st2.executeQuery("UPDATE Sensor SET Color='Naranja' WHERE IdSensor=id AND IdPieza='pieza';");
						   System.out.println(colorSensor);
					   }
				       else {
				    	   ResultSet colorSensor=st2.executeQuery("UPDATE Sensor SET Color='Rojo' WHERE IdSensor=id AND IdPieza='pieza';");
				     }
				}
			}
			if(pieza=="Humedad") {
				if ((40 < humedad )&&(humedad<= 60) ){
					ResultSet s1=st2.executeQuery("UPDATE Sensor SET Color='Verde' WHERE IdSensor=id AND IdPieza='pieza';");
				}
				else {
					  if( (60 < humedad)&& (humedad < 75)) {
				
						  ResultSet s1=st2.executeQuery("UPDATE Sensor SET Color='Naranja' WHERE IdSensor=id AND IdPieza='pieza';");
					  }
				      else {
				    	  ResultSet s1=st2.executeQuery("UPDATE Sensor SET Color='Rojo' WHERE IdSensor=id AND IdPieza='pieza';");
				      }
		}
		}
		}
		}
}
			
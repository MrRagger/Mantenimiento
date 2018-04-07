package com.mycompany.app.simulated.device.app;

import com.microsoft.azure.sdk.iot.device.*;
import com.google.gson.Gson;

import java.io.*;
import java.net.URISyntaxException;
import java.sql.SQLException;
import java.util.Random;
import java.util.concurrent.Executors;
import java.util.concurrent.ExecutorService;

public class App 
{
private static String connString = "HostName=Trenes.azure-devices.net;DeviceId=myFirstJavaDevice;SharedAccessKey=U5KmHYuHQEuyK3qO1VG5rw==";
private static IotHubClientProtocol protocol = IotHubClientProtocol.MQTT;
private static String deviceId = "myFirstJavaDevice";
private static DeviceClient client;

static class Sensor {
		public double humidity;
		public double temperature;

		public Sensor(double h, double p){
			this.humidity = h;
			this.temperature = p;
		}

		public double getHumidity (){
			return humidity;
		}
		public double getTemperature(){
			return temperature;
		}

		public void setHumidity (double variable){
			this.humidity = variable;
		}
		public void setTemperature (double variable){
			this.temperature = variable;
		}
	}

   
private static class TelemetryDataPoint {
  public String deviceId;
  public double temperature;
  public double humidity;

  public String serialize() {
    Gson gson = new Gson();
    return gson.toJson(this);
  }
}
private static class EventCallback implements IotHubEventCallback {
  public void execute(IotHubStatusCode status, Object context) {
    System.out.println("IoT Hub responded to message with status: " + status.name());

    if (context != null) {
      synchronized (context) {
        context.notify();
      }
    }
  }
}
public static class MessageSender implements Runnable {
    static double humedad=0;
    static double temperatura=0;
	public static Sensor sensor=new Sensor(humedad,temperatura);  
  public void run()  {
    try {
      double minTemperature = 0;
      double minHumidity = 10;
      Random rand = new Random();

      while (true) {
        double currentTemperature = minTemperature + rand.nextDouble() * 15;
        double currentHumidity = minHumidity + rand.nextDouble() * 20;

	
	sensor.setHumidity (currentHumidity);
	sensor.setTemperature(currentTemperature);

        TelemetryDataPoint telemetryDataPoint = new TelemetryDataPoint();
        telemetryDataPoint.deviceId = deviceId;
        telemetryDataPoint.temperature = currentTemperature;
        telemetryDataPoint.humidity = currentHumidity;

        String msgStr = telemetryDataPoint.serialize();
        Message msg = new Message(msgStr);
        msg.setProperty("temperatureAlert", (currentTemperature > 30) ? "true" : "false");
        msg.setMessageId(java.util.UUID.randomUUID().toString()); 
        System.out.println("Sending: " + msgStr);

        Object lockobj = new Object();
        EventCallback callback = new EventCallback();
        client.sendEventAsync(msg, callback, lockobj);

        synchronized (lockobj) {
          lockobj.wait();
        }
        Thread.sleep(1000);
      }
    } catch (InterruptedException e) {
      System.out.println("Finished.");
    }

  }
}
public static void main( String[] args ) throws IOException, URISyntaxException {
 // client = new DeviceClient(connString, protocol);
 // client.open();

	// MessageSender sender = new MessageSender();

  //ExecutorService executor = Executors.newFixedThreadPool(1);
  //executor.execute(sender);

  //System.out.println("Press ENTER to exit.");
  //System.in.read();
  //executor.shutdownNow();
  //client.closeNow();
  Algoritmo algoritmo=new Algoritmo();
  try {
	algoritmo.analizarDatos();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
  
}
}
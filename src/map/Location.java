package map;

public class Location {
	
	double lat, lon;

	public Location(double lat, double lon) 
	{
		this.lat = lat;
		this.lon = lon;
	}
	
	public double getLat() 
	{
		return this.lat;
	}
	
	public double getLon() 
	{
		return this.lon;
	}

}

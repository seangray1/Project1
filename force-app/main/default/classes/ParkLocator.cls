public class ParkLocator {
    public static String[] country (String country){
        
        ParkService.ParksImplPort parks = new ParkService.ParksImplPort();
		String[] countries = parks.byCountry(country);
        return countries;
        
    }

}
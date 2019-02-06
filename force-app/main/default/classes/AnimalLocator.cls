public class AnimalLocator {
    public static String getAnimalNameById (Integer id) {    //accepts an integer and returns a string. 
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + id);
        request.setMethod('GET');
                            HttpResponse response = http.send(request);
        String strResp ='';
        
                            
                            if (response.getStatusCode() == 200) {
                                Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
        Map<string,object> animals = (Map<string,object>) results.get('animal');
            System.debug('Received the following names:' + animals);
            strResp = string.valueOf(animals.get('name'));
            System.debug('strResp ' + strResp);                
                      
                          
        
        
        
    }
                            
 return strResp;
}
   
}
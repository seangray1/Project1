public class newcaseffff {
    
    public list<case> getNewCases() {
        list<case> results = Database.query ('Select ID, CaseNumber' + 'FROM Cases ');
                                             
                                             return results; 
                                             }
    
    
}
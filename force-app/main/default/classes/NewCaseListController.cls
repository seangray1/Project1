public class NewCaseListController {

    public List<Case> getCases() {
        
        List<Case> results = [Select Id, CaseNumber FROM Case WHERE Status ='New'];
        return results;
    }
        
         
        
    
    
}
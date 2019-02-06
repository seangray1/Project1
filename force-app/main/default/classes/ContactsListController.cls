public class ContactsListController {
    
   private String sortOrder = 'LastName';
    
    
    public List<Contact> getContacts() {
        
        
        List<Contact> results = Database.query ('Select id, FirstName, LastName, Title, Email '
                                               + 'From Contact ' + 'ORDER BY ' + sortOrder + ' ASC ' + 'LIMIT 10');
        return results;
    }
        
        public void sortByFirstName() {this.sortOrder = 'FirstName';
                                       
                                      }
    public void sortByLastName() {this.sortOrder = 'LastName';
                                     }
    
    
    
    

}
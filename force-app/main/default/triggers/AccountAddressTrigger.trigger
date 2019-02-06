trigger AccountAddressTrigger on Account (before update) {
    list<Account> acctList = new List<account>();
    acctList=[Select Id, Name, BillingPostalCode, ShippingPostalCode, Match_billing_Address__c From Account Where Id In :Trigger.new];
    System.debug(acctList +'acctList hh');
    System.debug(acctList.size());
  list<account> listing = new List<account>();
   // Map<Id,Account> acctsWithPostal = new Map<Id,Account>([Select Id From Account Where Id IN :Trigger.New]);
    
    For(Account a: acctList){
        If((a.Match_Billing_Address__c)&&(a.BillingPostalCode != null)){
            system.debug('working?');
            a.ShippingPostalCode= a.BillingPostalCode;
            listing.add(a);
          //  acctList.add(a);
        }
        
        
    }
    

}
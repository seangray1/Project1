trigger AccountAddressTrigger2 on Account (before insert, before update) {
    list<Account> acctList = new List<account>();
    acctList=[Select Id,Match_Billing_Address__c, BillingPostalCode From Account Where Id In :Trigger.new];
    System.debug(acctList +'acctList hh');
    System.debug(acctList.size());
  
   // Map<Id,Account> acctsWithPostal = new Map<Id,Account>([Select Id From Account Where Id IN :Trigger.New]);
    
    For(Account a: acctList){
        system.debug(a+ 'a first');
        system.debug(acctList + 'acct first');
        If((a.Match_Billing_Address__c)&&(a.BillingPostalCode != null)){
            a.ShippingPostalCode= a.BillingPostalCode;
            //acctList.add(a);
        }
        
        
    }

}
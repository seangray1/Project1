public with sharing class CampingListController {
@AuraEnabled
    public static list<Camping_Item__c> getItems () {
        return[Select Id, Name, Price__c, Quantity__c, Packed__c FROM Camping_Item__c];
    }
    @AuraEnabled
    public static Camping_Item__c saveItem(Camping_Item__c items) {
        system.debug('before upsert');
        upsert items;
        system.debug('after upsert');
        return items;
    } 
}
//saveItem method
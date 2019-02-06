public with sharing class leagueController {
@AuraEnabled
    public static List <Lol__c> getChampions() {
        return [SELECT Name, Health__c, Type__c FROM Lol__c];
    }
    @AuraEnabled
    public static Lol__c saveChampion(Lol__c apexChampion){
        system.debug('1');
        upsert apexChampion;
        system.debug('2');
        return apexChampion;
    }
}
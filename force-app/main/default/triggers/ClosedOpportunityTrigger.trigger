trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
	List<opportunity> opp = new List<Opportunity>();
    List<Task> T = new List<Task>();
    
    List<opportunity> oppList = [Select Id, StageName From Opportunity Where Id In :Trigger.new];
    System.debug(oppList.size() + '1');
    For(Opportunity o: oppList){
        if(o.StageName=='Closed Won'){
            T.add(new Task(WhatId=o.Id, Subject='Follow Up Test Task'));
           
            
        }
    }
    Insert T;
}
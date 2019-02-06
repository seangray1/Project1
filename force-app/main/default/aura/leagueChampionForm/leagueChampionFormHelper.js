({
	helperCreateChampion : function(component) {
        var newChampion = component.get("v.newChampion");
        var championCreation  = component.getEvent("champion");
        championCreation.setParams({"champion": newChampion});
        console.log("working");
        championCreation.fire();
        console.log(championCreation + " champions fff");
        component.set("v.newChampion", {'sobjectType': 'Lol__c', 'Name': '', 'Health__c':'0', 'Type__c':''});
        console.log(championCreation + " resetting");
	}
})
({
	createItem : function(component) {
        var newItem = component.get("v.newItem");
        
        var itemEvent = component.getEvent("addItem");
        itemEvent.setParams({"item":newItem});
        console.log("first working");
        itemEvent.fire();
        console.log("still working?");
        component.set("v.newItem", {'sObjectType': 'Camping_Item__c', 'Quantity__c':'0', 'Price__c':'0', 'Name':'', 'Packed__c':'false'});
		console.log('resetting');
		
	}
})
({
	clickCreateOpp : function(component, event, helper) {
        var newOpp = component.get("v.newOpp")
        var eventOpp = component.getEvent("addOpp");
        eventOpp.setParams({"addOpp" : newOpp});
        eventOpp.fire();
   
        
       
	}
})
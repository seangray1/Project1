({
	packItem : function(component, event, helper) {
        
        component.set(v.item.packed__c, true);
        component.set(v.disabled, true);
		
	}
})
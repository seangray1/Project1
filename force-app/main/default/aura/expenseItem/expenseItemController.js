({
    doInit : function(component, event, helper) {
        console.log("working maybe");
        var mydate = component.get("v.expense.Date__c");
        if(mydate){
            component.set("v.formatdate", new Date(mydate));
        }
    },
  
    clickReimbursed: function(component, event, helper) {
        var expensesss = component.get("v.expense");
        var updateEvent = component.getEvent("updateExpense");
        console.log("toggled B I T C H");
        updateEvent.setParams({ "expense": expensesss });
        updateEvent.fire();
    }

})
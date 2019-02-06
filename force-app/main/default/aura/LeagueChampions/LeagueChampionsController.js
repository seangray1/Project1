({
    
   doInit: function(component, event, helper) {
        var action = component.get("c.getChampions");
       action.setCallback(this, function(response){
            var state = response.getState();
            if (component.isValid() && state === "SUCCESS") {
                component.set("v.championList", response.getReturnValue());
                console.log(action + " second action");
             }
           else{
               console.log("failed with state "+ state);
           }
     });
      $A.enqueueAction(action);  
    },
	 //clickCreateChampion : function(component, event, helper) {
       // console.log("working");
       //var creatingChampion = component.get('v.newChampion');
        //var champions = component.get('v.championList');
        //champions.push(creatingChampion);
        //console.log("keeping");
        //component.set('v.championList', champions); 
        
    createChampion: function(component, event, helper) {
        var championEventVar = event.getParam("champion");
        console.log("working for championController before Save");
        var action = component.get("c.saveChampion");
     console.log("working for championController after Save");
        action.setParams({"apexChampion": championEventVar}); 
        
        action.setCallback(this, function(response){
            var state = response.getState();
            if (component.isValid() && state === "SUCCESS") {
                var championList = component.get("v.championList");
                championList.push(championEventVar);
                console.log("working for championController after all");
                component.set("v.championList",championList);
         }
         });
        $A.enqueueAction(action);
        
        
        
    }
        
		
	
})
public class MultiSelectController {

    @AuraEnabled
    public static Map<String, Integer> fetchMapData(){
                Map<String, Integer> rollupByProductFamily = new Map<String, Integer>();
        Integer Ford = 0;
                                Integer Chevy = 0;
                                Integer Dodge = 0;
                                Integer Honda = 0;
                                Integer Nissan = 0;
                                Integer Toyota = 0;

                                // Query all opportunities
                                List<Opportunity> oppWithProducts = new List<Opportunity>([Select Id,Name,Product_Family__c FROM Opportunity WHERE Product_Family__c != null]);
                                for(Opportunity op : oppWithProducts){
                                if(op.Product_Family__c.contains('Ford')){
                               Ford += 1;
                                }
                                if(op.Product_Family__c.contains('Chevy')){
                               Chevy += 1;
                                }
                                if(op.Product_Family__c.contains('Dodge')){
                               Dodge += 1;
                                }
                                if(op.Product_Family__c.contains('Honda')){
                               Honda += 1;
                                }
                                if(op.Product_Family__c.contains('Nissan')){
                               Nissan += 1;
                                }
                                if(op.Product_Family__c.contains('Toyota')){
                               Toyota += 1;
                                }    
                                }

        rollupByProductFamily.put('Ford', Ford);
                                rollupByProductFamily.put('Chevy', Chevy);
                                rollupByProductFamily.put('Dodge', Dodge);
                                rollupByProductFamily.put('Honda', Honda);
                                rollupByProductFamily.put('Nissan', Nissan);
                                rollupByProductFamily.put('Toyota', Toyota);
        
        return rollupByProductFamily;
    }
}
trigger ExampleTrigger on Contact (after insert, after delete) {
    if(trigger.isInsert) {
        Integer recordCount = Trigger.New.size();
        
        EmailManager.sendMail('seanmgray77@gmail.com', 'Testing', recordCount + ' contacts have been inserted');
    }
    else if(Trigger.isDelete) {
        
    }
}
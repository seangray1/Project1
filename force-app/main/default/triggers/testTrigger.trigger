trigger testTrigger on Opportunity (after insert) {
for(Opportunity o : trigger.new){
    O.description = 'hello';
    update O;
}

}
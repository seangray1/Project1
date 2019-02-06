@isTest
private class ParkLocatorTest {
    @isTest static void testCallOut(){
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        List<String> result = new List<String>();
        List<String> expectedValue = new List<String>{'Germany', 'India', 'Japan', 'United States'};
        result = ParkLocator.country('India');
        System.debug(result);
        System.assertequals(expectedValue, result);
        System.debug(result + ''+ expectedValue);
        
    }
    
}
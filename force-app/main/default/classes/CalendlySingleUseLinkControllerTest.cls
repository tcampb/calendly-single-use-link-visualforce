@isTest
public class CalendlySingleUseLinkControllerTest {
    @isTest
    private static void runTest() {
        Test.setMock(HttpCalloutMock.class, new CalendlyHttpCalloutMock());
        CalendlySingleUseLinkController controller = new CalendlySingleUseLinkController();
        controller.eventTypeUUID = '123';
        
        controller.getLink();
    }
}
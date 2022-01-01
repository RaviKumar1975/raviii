public class PropertyUtility {
    public static void newListedProperties()
    {
        List<Property__c> newPropList = [SELECT Name, Days_On_Market__c,Broker__r.Email__c FROM Property__c WHERE Days_On_Market__c<=30];
        for(Property__c pt:newPropList)
        {
            String propEmail=pt.Name +' : '+pt.Broker__r.Email__c;
            System.debug(propEmail);
        }
    }

}
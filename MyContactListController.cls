public with sharing class MyContactListController {

@AuraEnabled
public static List<Contact> getContacts(Id recordId) {
    system.debug(recordId);
   return [SELECT Id, FirstName, LastName, Email, Phone FROM Contact WHERE AccountId = :recordId];
}
}
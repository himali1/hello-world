public with sharing class AccountListForForEach {
    @AuraEnabled(cacheable=true)
    public static List<Account> accountList(){
        try {
            return [SELECT Id, Name FROM Account WITH SECURITY_ENFORCED LIMIT 5];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}

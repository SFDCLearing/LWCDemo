@isTest
public class AccountcntPhoneupdateTest {
	@isTest
    public static void testsetup(){
        Account acc=New Account(Name='TestPhone',Phone='1234567890');
        for(Integer i=0;i<11;i++){
          Contact ct=New Contact(LastName='Test'+i,Phone='8106595986',AccountId=acc.Id);
            insert ct;
        }
    }
    @isTest 
    public static void testmethod1(){
        List<Contact> listofcnt=[select Id,Phone,AccountId from Contact];
        Map<Id,Contact> mapofacc=New Map<Id,Contact>();
        for(Contact ct: listofcnt){
            mapofacc.put(ct.AccountId,ct);
        }
        
    }
}
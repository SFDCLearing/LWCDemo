@isTest
public class AccountinsertupdateTest {
    @testsetup
    static void setup(){
        for(Integer i=0;i<=10;i++){
            Account ac= New Account(Name='TestAcc'+i,Phone='999999999');
            insert ac;
        }
    }
    @isTest Public static void testmethod1(){
		
    }
}
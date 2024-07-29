public class accountsearchclass {

    public accountsearchclass(ApexPages.StandardController controller) {

    }

public string searchname{get;set;}
public List<Account> listofaccounts {get;set;}
public List<Account> listofaccounts1 {get;set;}
public string typepicklist {get;set;}
public boolean selectcheckbox {get;set;}

public PageReference search(){
if(searchname==''&& typepicklist=='None'){
ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.ERROR,'Error Message');
ApexPages.addMessage(myMsg);
}else{
listofaccounts=[select id,name,type,rating from Account where name=:searchname AND Type=:typepicklist];
}
return null;
}
public PageReference savemethod(){
Account ac=new Account();
PageReference orderPage = new PageReference('/' +ac.id);
orderPage.setRedirect(true);
return orderPage;
}
}
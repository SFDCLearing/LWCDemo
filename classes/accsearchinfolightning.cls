public class accsearchinfolightning {
    @AuraEnabled
    public static List<wrapperclass> accsearchmethod(string accountname){
        List<wrapperclass> listofwrapper = new List<wrapperclass>();
        List<Account> listofacc =[select id,name,type from Account where name=:accountname];
        for(Account ac:listofacc){
			wrapperclass wp=new wrapperclass(ac);
                listofwrapper.add(wp);
        }
        return listofwrapper;
    }    
    public class wrapperclass{
        @AuraEnabled public Account acc {get;set;}
        public wrapperclass(Account a){
            acc=a;
        }
    }
}
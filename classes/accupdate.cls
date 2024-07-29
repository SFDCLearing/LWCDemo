public class accupdate{
	public static void recupdate(){
		Account acc=new Account();
        //currentRecordId =  ApexPages.CurrentPage().getparameters().get('id');
		List<Account> listacc=[select Id,name,AccountNumber from Account];
		if(acc.Name=='vv'){
			acc.AccountNumber='8919437896';
           	update acc;
	}

    }	
}
Public class Accountinsertupdate{
	public void Accinsert(Integer n){
		List<Account> l=New List<Account>();
        for(Integer i=0;i<=n;i++){
			Account ac= New Account(Name='TestAcc'+i,Phone='999999999');
			l.add(ac);
        }
		insert l;
	}
	public void Accupdate(){
		 List<Account> listacc=[Select Id,Name,Phone from Account where Phone='999999999'];
		List<Account> listupdate=New List<Account>();
		
        for(Account a:listacc){
			a.Phone='122344';
			listupdate.add(a);
        }
		update listupdate;
		
	}
}
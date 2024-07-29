public class accrecinsert{
    public static Integer count=1;
	public static void datainsert(Integer value){
		List<Account> listacc=new List<Account>();
		while(count<=value){
		Account acc=new Account();
		acc.Name='testDEV'+count;
        acc.AccountNumber='123'+count;
		count+=1;
		listacc.add(acc);
		}
		Database.insert(listacc);
	}
}
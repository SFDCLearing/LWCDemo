global class AccountbatchUpdate implements database.Batchable<sObject>{
    global database.querylocator start(database.batchablecontext bc){
        return database.getquerylocator([select Id,Name,Phone,Rating,Type from Account]);
    }
    global void execute(database.batchablecontext bc,List<Account> acclist){
        for(Account acc:acclist){
            acc.Rating='Hot';
            acc.Type='Prospect';
        }
        update acclist;
    }
    global void finish(database.Batchablecontext bc){
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[] {'vinayramireddy999@gmail.com','venkatesh85999@gmail.com'};
        mail.setToAddresses(toAddresses);
        mail.setSubject('Account Batch Apex Job');
        String bodyText='Account field updates succesfully';
        mail.setPlainTextBody(bodyText);
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
                
    }
}
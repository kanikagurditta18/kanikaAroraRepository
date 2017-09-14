public with sharing class AccountRecordVf {
    public List<Account>records {
    	get;
    	set;
    }
    public AccountRecordVf() {
    	records = [Select id, Name ,AccountNumber,	Description ,Industry,	Phone from Account];
    }
}
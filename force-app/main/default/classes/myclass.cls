public with sharing class myclass {
	public myclass() {
		system.debug('ciao Sanbox_2');
		Object__c c = new Object__c();
	}

	public String getAppVersion() {
		return '1.0.0';
	}
}

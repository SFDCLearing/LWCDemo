public with sharing class accPickNamesDisplayClass {
List<selectOption> options = new List<selectOption>();
public List<selectOption> getAccNames() {
for(location__c acc : [select Id,name from location__c]) {
options.add(new selectOption(acc.name,acc.name));
}
return options;
}
}
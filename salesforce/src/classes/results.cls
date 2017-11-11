public class results {
public list<list<post_motel__c>> m{get;set;}
public string str{get;set;}
public pagereference soslresult(){
m=[FIND :str IN ALL FIELDS RETURNING Post_Motel__c(name,city__c,country__c,zip_code__c,email__c,phone__c,street_1__C,Motel_Category__c)];
return null;
}

}
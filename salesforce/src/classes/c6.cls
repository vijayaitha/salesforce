public class c6{
string keyword;
list<account> results;
public string getkeyword(){
return keyword;
}
public list<account> getresults(){
return results;
}
public void setkeyword(string str){
keyword='str';
}
public pagereference searchnow(){
results=[select name,type,phone,industry from account where name like :keyword+'%'];
return null;
}
}
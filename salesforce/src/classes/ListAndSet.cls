public class ListAndSet {
    public void get(){
        List<string> c= new List<string>();
        c.add('red');
        c.add('green');
        c.add('pink');
        c.add('blue');
        c.get(2);
        c.remove(3);
        c.set(1,'white');
        c.size();
        c.sort();
        c.isempty();
        system.debug(c);
        set<string> s=new set<string>();
        s.add('c');
        s.add('java');
        s.add('c++');
        s.add('sql');
        s.contains('c');
         system.debug(s);
        s.clear();
        system.debug(s);
        s.remove('c++');
        system.debug(s);
        c.addAll(s);
        system.debug(c);
        
    }

}
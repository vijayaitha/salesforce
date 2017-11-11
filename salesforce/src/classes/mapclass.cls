public class mapclass {
    public void getresults(){
    map<integer,string> m= new map<integer,string>();
        m.put(1,'India');
        m.put(2,'pakistan');
        m.put(3,'USA');
        m.put(4,'Canada');
        system.debug(m);
        m.containsKey(2);
        system.debug(m);
        m.values();
        system.debug(m);
        m.keySet();
        system.debug(m);
        m.containsKey(1);
        system.debug(m);
        m.remove(2);
        system.debug(m);
        m.size();
        system.debug(m);
        m.clone();
        system.debug(m);
        m.clear();
        system.debug(m);
        }
}
trigger basic on Account (before update) {
    list<account>acc= trigger.new;
    for(account a:acc){
    a.phone='69870';
    }
}
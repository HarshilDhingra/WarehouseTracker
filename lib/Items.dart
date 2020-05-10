class Items{
  int rack;
  String name;
  int shelf;
  int slot;
  int boxes;
  Items(
      this.name,
      this.rack,
      this.shelf,
      this.slot,
      this.boxes
      );
  function(){
    return "Product name= $name,Rack no.=$rack,Shelf no.=$shelf,Slot no.=$slot,No .of Boxes=$boxes";
  }
}
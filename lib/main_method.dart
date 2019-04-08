void main(){
  List _list = List.generate(20, (index) => 'Item + $index');
  _list.map();
}
void main() async{
    print("Hello World");


    var list = [1,2,3];
    var listVar = new List();

    list.add(4);
    print(list);

    var list2 = const[1,2,3];
    print(list2);

    var asMap = list2.asMap();

    print(asMap);

}




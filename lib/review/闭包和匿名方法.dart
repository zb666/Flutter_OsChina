void main() {
  //匿名方法 可以作为参数进行传递
  var func = () {
    print('打印数据');
  };
  //闭包 闭包是个方法(对象)，定义在其他方法内部,其实就是定义在方法内部的匿名方法
  //闭包能够访问外部方法内的局部变量，并且持有其状态，这里很关键哦，不仅能够访问 而且持有状态
  var aD = a(); //这是方法的变量
//  aD.printCount 方法不能获取到里面的局部变量的
  aD(); //这里代表的是对该对象进行方法的调用
  aD();

  //没有名字的只关心入参和出参 匿名方法
  var funcD = () => {func()};

  funcD();
}

a() {
  int printCount = 0;
  //方法中的局部变量需要闭包才能够进行访问
  printCountMethod() {
    print(printCount++);
  }

  return () {
    print(printCount++);
  };
}

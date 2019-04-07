void main(){
  new Future(()=>print('s3'))
  .then((_aaa) => print('_私有变量'));


}

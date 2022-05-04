void main(){
  var codes= Map<String,String>();

  codes['IN']="India";
  codes['JP']='Japan';
  codes['DE']='Germany';
  print(codes);

  for(var v in codes.entries){
    print(v);
  }

  print('codes.containsKey("IN")=>${codes.containsKey("IN")}');
  
  print('codes.containsKey("NR")=>${codes.containsKey("NR")}');

  print('codes["IN"]=>${codes["IN"]}');
  print('codes["USA"]=>${codes["USA"]}');

  codes['IN']="Bharat"; //replaces Indian
  print('codes["IN"]=>${codes["IN"]}');

}
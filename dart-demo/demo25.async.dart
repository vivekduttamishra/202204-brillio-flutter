
import 'dart:math';

Future<String> getOrderStatus(int id){
  return Future.delayed(Duration(seconds:2),(){
    if(id<=0 || id>100)
      throw Exception('Order Not Found $id');
    
    return "done";
  });
}

Future getOrderFrontEnd(int id) async{
  
    try{
      var m=await getOrderStatus(id);
      print('order status for $id is $m');
    }catch( e){
      print('ERROR : ${e.message}');
    }
        

}

void main() async{
  await getOrderFrontEnd(21);
  await getOrderFrontEnd(-1);
  await getOrderFrontEnd(12);
  print('fetching order details');
}
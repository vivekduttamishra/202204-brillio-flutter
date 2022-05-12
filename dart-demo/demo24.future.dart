
import 'dart:math';

Future<String> getOrderStatus(int id){
  return Future.delayed(Duration(seconds:2),(){
    if(id<=0 || id>100)
      throw Exception('Order Not Found $id');
    
    return "done";
  });
}

Future getOrderFrontEnd(int id){
  
    return getOrderStatus(id)
        .then((m)=>print('order status for $id is $m'))
        .catchError((e)=>print('ERROR fetching status for order $id: ${e.message}'));

}

void main(){
  getOrderFrontEnd(21);
  getOrderFrontEnd(-1);
  getOrderFrontEnd(12);
  print('fetching order details');
}
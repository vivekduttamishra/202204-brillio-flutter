void main(){

  int n =5;
  
  print('factorial of $n is ${factorial(n)}');
}

int factorial(int x){
  int fx=1;
  
  while(x>1)
    fx*=x--;

  return fx;

}
class IncomeTax{
  double calculateTax(int income){
    return income/10;
  }
}

class GST extends IncomeTax{
  @override
  double calculateTax(int income) {
    double oldTax = super.calculateTax(income);
    int gst = 100;
    return oldTax +gst;
  }
}

void main(){
  IncomeTax incomeTax = new IncomeTax();
  print(incomeTax.calculateTax(10000));
  GST gst = GST();
  print("gst is ${gst.calculateTax(10000)}");
}
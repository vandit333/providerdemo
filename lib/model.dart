import 'package:flutter/cupertino.dart';

class model extends ChangeNotifier
{
  int sum=0;
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();

  get(String a,String b,String method)
  {
    if(method=="sum")
    {
      sum=num.parse(a).toInt()+num.parse(b).toInt();
    }
    if(method=="sub")
    {
      sum=num.parse(a).toInt()-num.parse(b).toInt();
    }
    if(method=="div")
    {
      sum=num.parse(a).toInt()*num.parse(b).toInt();
    }

    notifyListeners();
  }
}


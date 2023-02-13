


import 'package:flutter/foundation.dart';

class list with ChangeNotifier{


  List<int> my_list = [];

  List<int> get get_list => my_list;

  void add_item(int index){
    my_list.add(index);
    notifyListeners();
  }

  void remove_item(int index){
    my_list.remove(index);
    notifyListeners();
  }

}

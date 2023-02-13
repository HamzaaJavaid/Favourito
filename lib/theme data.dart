

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class theme with ChangeNotifier{

  ThemeData present_theme = ThemeData.light();

  get get_theme=> present_theme;

  set_theme(ThemeData themee){
    bool isDark = themee==ThemeData.dark();

    if(isDark){
      present_theme = ThemeData.light();
      notifyListeners();
    }
    else if(!isDark){
      present_theme = ThemeData.dark();
      notifyListeners();
    }

  }



}
import 'package:favorito_app/favourite_cart.dart';
import 'package:favorito_app/sep%20list%20class.dart';
import 'package:favorito_app/theme%20data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Main_Screen extends StatefulWidget {
  const Main_Screen({Key? key}) : super(key: key);

  @override
  _Main_ScreenState createState() => _Main_ScreenState();
}

class _Main_ScreenState extends State<Main_Screen> {



  @override
  Widget build(BuildContext context) {
  final provider_1 = Provider.of<list>(context);
  final provider_2 = Provider.of<theme>(context);
  bool isdark = false;
  return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightGreenAccent,
        title: Row(children: [

          SizedBox(width: 120,),
          Text('FAVORITO ',style: TextStyle(color: Colors.black)),
          SizedBox(width: 80,),
           InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>cart()));
              print('Pressed appbar  Favourite');

              },
            child: Icon(Icons.favorite),
          ),
          SizedBox(width: 20,),
          Consumer<theme>(builder: (context, value, child) {
            print("Theme icon build again");
            return InkWell(
              onTap: (){

                value.set_theme(provider_2.get_theme);


              },
              child: provider_2.get_theme==ThemeData.dark()?Icon(Icons.dark_mode):Icon(Icons.wb_sunny),
            );
          })

        ],
      )),
      body: Column(
        children: [
          Consumer<list>(builder: (context, value, child) {
            bool select = false;
            return Expanded(child: ListView.builder(
            itemCount: 11,
    itemBuilder: (context, index) {


    return ListTile(
    title: Text("This is Product # $index"),
    trailing: InkWell(
    onTap: (){

      if(value.my_list.contains(index)){
        value.remove_item(index);
      }
      else{
        value.add_item(index);
      }

    },

    child:  value.my_list.contains(index) ? Icon(Icons.favorite):Icon(Icons.favorite_border),
    ),
    );
    }));
          })


        ],
      ),
    );
  }
}

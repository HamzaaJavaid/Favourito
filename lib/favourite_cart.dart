import 'dart:async';

import 'package:favorito_app/theme%20data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'sep list class.dart';

class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {


  @override

  @override

  @override
  Widget build(BuildContext context) {
    final provider_2 = Provider.of<list>(context);
    final provider_1 = Provider.of<theme>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightGreenAccent,
        title: Row(children: [

          SizedBox(width: 50,),
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

                value.set_theme(provider_1.get_theme);


              },
              child: provider_1.get_theme==ThemeData.dark()?Icon(Icons.dark_mode):Icon(Icons.wb_sunny),
            );
          })

        ],
        ),
      ),
      body: Column(
        children: [

          Consumer<list>(builder: (context, value, child) {

            return Expanded(child: ListView.builder(
                itemCount: value.get_list.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("This is Product # ${value.get_list[index]}"),
                    trailing: InkWell(
                      onTap: (){

                        if(value.my_list.contains(index)){
                          value.remove_item(index);
                        }
                        else{
                          value.add_item(index);
                        }


                      },

                      child: value.my_list.contains(index) ?  Icon(Icons.favorite): Icon(Icons.favorite_border) ,
                    ),
                  );
                }));
          }),

      ],
      ),
    );
  }
}

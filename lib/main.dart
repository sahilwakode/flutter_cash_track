
import 'dart:html';
import './transaction.dart';

import 'package:flutter/material.dart' ;
//void main()
//{
// runApp(MyApp());
//}
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title:'Expenses Outreach',
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget{
  final List <Transaction>transactions=[
    Transaction(
      id: 't1',
     title: 'New Shoes',
      amount: 59.99,
       date: DateTime.now(),
    
    ),
    Transaction(
     id: 't2',
     title: 'Grocery',
      amount: 632.59,
       date: DateTime.now(),
    
    ),
  ];
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Expenses'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget> [
        Container(
          width: double.infinity,
        child:Card(
          color: Colors.blue,
          child: Text('Chart!'),
          elevation: 5,
        ),
        ),
      Column(
        children: transactions.map((tx){
        return
         Card(
           child:Row(children:<Widget> [
           Container()
           ],),
            );
      }).toList(),)
      ],)

    );
  }

}
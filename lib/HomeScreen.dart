import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

 List<String> fruitList = ['Orange' , 'Apple' , 'Mangoes' , 'Bannana'];
 List<String> tempFruitList = [];

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen'),centerTitle: true,),
      body: ListView.builder(
        itemCount: fruitList.length,
        itemBuilder: (context , index){
        return Card(
          child: ListTile(
            onTap: (){
              
              if(tempFruitList.contains(fruitList[index].toString())){
                tempFruitList.remove(fruitList[index].toString());
              }else {
                tempFruitList.add(fruitList[index].toString());
              }
              
              setState(() {
                
              });
            },
            title: Text(fruitList[index].toString()),
            trailing: Icon(Icons.favorite,
            color: tempFruitList.contains(fruitList[index].toString()) ? Colors.red : Colors.white,
            )
          ),
        );
      }),
    );
  }
}
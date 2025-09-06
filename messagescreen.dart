import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/Widget/UI_helper.dart';

class Messagescreen extends StatelessWidget{
  TextEditingController searchController=TextEditingController();
  var arrCount=[{
    "img":"oval7.png ",
    "name":"Yashna",
    "Lastmsg":"Have a nice day",
  },
    {
    "img":"search.png",
      "name":"Neha",
      "Lasstmsg":"Love you!"
  },
    {
      "img":"post.png",
      "name":"Prachi",
      "Lastmsg":"Happy BD"
    },
    {
      "img":"oval7.png ",
      "name":"Yashna",
      "Lastmsg":"Have a nice day",
    },
    {
      "img":"search.png",
      "name":"Neha",
      "Lasstmsg":"Love you!"
    },
    {
      "img":"post.png",
      "name":"Prachi",
      "Lastmsg":"Happy BD"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        toolbarHeight: 88,
        leading: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.back)),
        title: Text("Sujal_dave",style: TextStyle(fontSize: 16, color: Color(0XFFF9F9F9),
        fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.white,size: 24,),)
        ],
        centerTitle: true,
      ) ,
      body: Column(
        children: [

          Row(
            children: [
              SizedBox(width: 20,),
              Container(
                height: 40,
                width: 370,
                decoration: BoxDecoration(
                  color: Color(0XFF262626),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(fontWeight: FontWeight.normal,color: Color(0XFF8E8E93)),
                      prefixIcon: UiHelper.CustomImage(imgurl: "Tab2.png"),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(itemBuilder: (context,index){
              return ListTile(
                leading:CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/${arrCount[index]["img"].toString()}"),
                ),
                title: Text(arrCount[index]["name"].toString(),style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                subtitle: Text(arrCount[index]["Lastmsg"].toString(),style: TextStyle(fontSize: 13,color: Colors.grey),),
                trailing: UiHelper.CustomImage(imgurl: "camera_icon.png"),
              );
            },itemCount:arrCount.length,
            ),
          )
        ],
      ),
      floatingActionButton: SizedBox(
        height: 60,
        width: double.infinity,
        child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor:Color(0XFF121212) ), child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          UiHelper.CustomImage(imgurl: "camera_icon.png"),
          SizedBox(width: 5,),
          Text("camera",style: TextStyle(fontSize: 13,color: Color(0XFF3897F0)),)
        ],)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,

    );
  }

}
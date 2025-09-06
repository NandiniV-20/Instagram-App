import 'package:flutter/material.dart';
import 'package:instagram/Widget/UI_helper.dart';
import 'package:instagram/message/messagescreen.dart';
class HomeScreen extends StatelessWidget{
  var arrCount=[
    {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbCLhWAEcKDFFJWZliYitygdMkPkokKQKqFA&s",
      "name":"Your Story"
    },{"img":"https://online.uc.edu/wp-content/uploads/2024/08/What-Is-AI-Featured.jpg ",
    "name":"Katrina"},
    {"img":" https://typli.ai/ai-text-generator.png",
    "name":"Sonatina"},
    {"img":"https://phspagesbypage.com/wp-content/uploads/2024/10/ai-future-creativity.jpg ",
    "name":"Sandya"}
    ,{"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn86pVJC_Vb_FmgI8t3x49YVW176x7inE3vg&s ",
    "name":"Sam"},
    {"img":" https://typli.ai/ai-text-generator.png",
      "name":"Sona"},
    {"img":"https://phspagesbypage.com/wp-content/uploads/2024/10/ai-future-creativity.jpg ",
      "name":"nanny"}
    ,{"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn86pVJC_Vb_FmgI8t3x49YVW176x7inE3vg&s ",
      "name":"Samar"}
  ];

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         toolbarHeight: 88,
         backgroundColor: Colors.black12,
         leading:UiHelper.CustomImage(imgurl: "camera_icon.png"),
         title: Text("Instagram"),
         centerTitle: true,
         actions: [
           IconButton(onPressed: (){}, icon: UiHelper.CustomImage(imgurl: "IGTV.png")),
           IconButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Messagescreen()));
           }, icon: UiHelper.CustomImage(imgurl: "messenger.png"))
         ],
       ),
       body: Column(children: [
         SizedBox(
           height: 50,
             child: ListView.builder(itemBuilder: (context,index){
               return Padding(
                 padding: const EdgeInsets.only(left: 20),
                 child: CircleAvatar(
                   radius: 30,
                   backgroundImage: NetworkImage(arrCount[index]["img"].toString()),
                 ),
               );
             },itemCount: arrCount.length,scrollDirection: Axis.horizontal,

             ),
           ),
         SizedBox(
           height: 30,
           child:Padding(
             padding: const EdgeInsets.only(left: 20),
             child: ListView.builder(itemBuilder: (context,index){
               return Padding(
                 padding: const EdgeInsets.only(left:20),
                 child: Text(arrCount[index]["name"].toString(),style: TextStyle(fontSize: 12),),
               );
             },itemCount:arrCount.length,scrollDirection:Axis.horizontal, ),
           ) ,
         ),
         Container(
           height: 54,
           width: 375,
           color: Colors.black12,
           child: ListTile(
             leading: UiHelper.CustomImage(imgurl: "oval7.png"),
             title: Text("Josh",style: TextStyle(fontSize: 13,color: Color(0XFFF9F9F9)),
             ),
             subtitle: Text("Tokya,Japan",style: TextStyle(fontSize: 11,color: Color(0XFFF9F9F9)),),
             trailing: UiHelper.CustomImage(imgurl: "dot.png"),

           ),
         ),
         SizedBox(
           height: 8,
         ),
         Container(
           height: 375,
           width: double.infinity,
           decoration: BoxDecoration(
             
           ),
           child: Image.asset("assets/images/post.png",fit:BoxFit.cover,),
         ),
         SizedBox(height: 20,),
         Row(children: [
           SizedBox(width: 20,),
           UiHelper.CustomImage(imgurl: "Tab4.png"),
           SizedBox(width: 20,),
           UiHelper.CustomImage(imgurl: "comment.png"),
           SizedBox(width: 20,),
           UiHelper.CustomImage(imgurl: "messenger.png"),
           SizedBox(width: 240,),
           UiHelper.CustomImage(imgurl: "save.png")
         ],),
         SizedBox(width: 20,),
         Row(
           children: [
             SizedBox(width: 20,),
             Text("Liked by oraig_love and 44 others",style: TextStyle(fontSize: 13,color: Color(0XFFF9F9F9)),)
           ],
         ),
         Row(children: [
           SizedBox(width: 20,),
           Text("josher",style: TextStyle(fontSize: 13,color: Color(0XFFF9F9F9)),),
           Text("  The game in Japan was amazing.",style: TextStyle(fontSize: 13,color: Color(0XFFF9F9F9)),)
         ],)

       ],
         
       )
     );

  }
}
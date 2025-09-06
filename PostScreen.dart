import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget{
  var arrContent=[
    {
    "img":"https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-169994-674010.jpg&fm=jpg"
    },
    {
      "img":"https://images.unsplash.com/photo-1593696954577-ab3d39317b97?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGZyZWUlMjBpbWFnZXN8ZW58MHx8MHx8fDA%3D"
    },
    {
      "img":"https://img.freepik.com/free-photo/closeup-scarlet-macaw-from-side-view-scarlet-macaw-closeup-head_488145-3540.jpg?semt=ais_incoming&w=740&q=80"
    },
    {
      "img":"https://i.pinimg.com/736x/2d/95/e5/2d95e5886fc4c65a6778b5fee94a7d59.jpg"
    },
    {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGSmi95jxUISOfZ4EfCflZvjiszCbc8Owwqg&s"
    },
    {
      "img":"https://img.freepik.com/free-photo/closeup-scarlet-macaw-from-side-view-scarlet-macaw-closeup-head_488145-3540.jpg?semt=ais_incoming&w=740&q=80"
    }
  ];



  PostScreen({super.key});@override
Widget build(BuildContext context){
    return Scaffold(
      body:GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3),
          itemBuilder:(context,index){
        return Container(
          clipBehavior: Clip.antiAlias,
          height: 124,
          width: 124,
          decoration: BoxDecoration(),
          child: Image.network(arrContent[index]["img"].toString(),fit: BoxFit.cover,),
        );
          },itemCount: arrContent.length,)
    );
}

}
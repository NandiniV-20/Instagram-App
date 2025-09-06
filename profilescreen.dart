
import 'package:flutter/material.dart';
import 'package:instagram/Screen/Profile/PostScreen.dart';
import 'package:instagram/Screen/Profile/Tags.dart';
import 'package:instagram/Widget/UI_helper.dart';
class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Nandiniii_203",style: TextStyle(fontSize:18,fontWeight: FontWeight.w500 ),),
              ],
            ),
          ),
        body:Column(children: [
          SizedBox(height: 28,),
          Row(children: [
            SizedBox(width: 20,),
            UiHelper.CustomImage(imgurl: "profile.png"),
            Row(children: [
              Column(
                children: [
                  Text("54",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                  Text("Post",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                ],
              ),
              SizedBox(width: 40,),
              Column(
                children: [
                  Text("834",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                  Text("Followers",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                ],
              ),
              SizedBox(width: 40,),
              Column(
                children: [
                  Text("164",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                  Text("Following",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                ],
              )
            ],)
          ],),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width:25),
              Text("Nandini Vajiawade",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),)
            ],
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              SizedBox(width:25),
              Text("Even simplest things are more beautiful",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),)
            ],
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              SizedBox(width:25),
              Text("DYPCOE Akurdi",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),)
            ],
          ),
          SizedBox(height: 20,),
          SizedBox(height: 40,width: 360,
              child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)
                    ),
                  ) ,
                  child: Text("Edit Profile",style:TextStyle(color:Colors.white,fontSize: 14))),
          ),
          SizedBox(height: 18,),
          Row(
            children: [
              SizedBox(width:10),
            Column(
              children: [
                Container(
                  height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                      border: Border.all(color: Colors.grey.shade700)
                    ),
                  child: Center(
                    child: Icon(
                      Icons.abc,
                      size: 40,
                    ),
                  ),
                ),
                SizedBox(height: 4,),
                Text("New",style: TextStyle(fontSize: 12),)
              ],
            ),
              SizedBox(width:10),
              Column(
                children: [
                  Container(
                    clipBehavior: Clip.antiAlias,
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                        border: Border.all(color: Colors.grey.shade700)
                    ),
                    child:UiHelper.CustomImage(imgurl: "profile.png")
                  ),
                  SizedBox(height: 4,),
                  Text("Friends",style: TextStyle(fontSize: 12),)
                ],
              ),
              SizedBox(width:10),
              Column(
                children: [
                  Container(
                      clipBehavior: Clip.antiAlias,
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          border: Border.all(color: Colors.grey.shade700)
                      ),
                      child:UiHelper.CustomImage(imgurl: "profile.png")
                  ),
                  SizedBox(height: 4,),
                  Text("Myself",style: TextStyle(fontSize: 12),)
                ],
              )
          ],),
          SizedBox(height: 50,
          child: AppBar(
            bottom: TabBar(
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs:[
              Tab(icon: UiHelper.CustomImage(imgurl: "Grid Icon.png"),),
              Tab(icon: UiHelper.CustomImage(imgurl: "Tags Icon.png"),)
            ]),
          ),),
          Expanded(
            child: TabBarView(children: [
              PostScreen(),
              Tags()
            ]),
          )
        ],)
      ),
    );

  }
}
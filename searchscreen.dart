
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/Widget/UI_helper.dart';
class Searchscreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var arrContent=[
    {"img":"https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-169994-674010.jpg&fm=jpg"},
    {"img":"https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg"},
    {"img":"https://www.foodiesfeed.com/wp-content/uploads/2023/06/pouring-honey-on-pancakes.jpg"},
    {"img":"https://media.istockphoto.com/id/1399246824/photo/digital-eye-wave-lines-stock-background.jpg?s=612x612&w=0&k=20&c=1cW5xuLcb6HPDj6CLQQFBvGK5_fJvx9eA2egik-3hAc="},
    {"img":"https://images.ctfassets.net/hrltx12pl8hq/4f6DfV5DbqaQUSw0uo0mWi/6fbcf889bdef65c5b92ffee86b13fc44/shutterstock_376532611.jpg?fit=fill&w=600&h=400"},
    {"img":"https://static.vecteezy.com/system/resources/thumbnails/042/730/459/small/lion-danger-animal-wildlife-nature-forest-photo.jpg" },
    {"img":"https://img.freepik.com/photos-gratuite/paysage-fantastique-papillon_23-2151451739.jpg?semt=ais_hybrid&w=740&q=80"},
    {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXSKNPM6L2SY8r2AGln9sWLmXj3-cAjz34Ug&s"},
    {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcCGCJNBI8Ap3hKJmHu0p826Qyb3Bc5SrPAA&s"},
    {"img":"https://media.istockphoto.com/id/1457433817/photo/group-of-healthy-food-for-flexitarian-diet.jpg?s=612x612&w=0&k=20&c=v48RE0ZNWpMZOlSp13KdF1yFDmidorO2pZTu2Idmd3M="},
    {"img":"https://static.vecteezy.com/system/resources/thumbnails/023/329/367/small/beautiful-image-in-nature-of-monarch-butterfly-on-lantana-flower-generative-ai-photo.jpg"},
    {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQup6LWjfBOjiQ_nmYVlhu1uV0RGpnZ-lBLjA&s"},
    {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0hoXtFYjtVmU7Zl2st61bWGcghuBZnliK-w&s"},
    {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_ax6aADgYx2U1CcM44d-7ndZUV_cvGM5UKA&s"},
    {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0_7HLmumnShnhUb6ShGNti2VyUIVU7G2IRw&s"},

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
          children: [
            SizedBox(height: 50,),
            Row(
              children: [
                SizedBox(width: 10,),
                Container(
                  height: 36,
                  width: 450,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0XFF262626)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        hintText: "Search",
                        prefixIcon: Icon(Icons.search),
                        hintStyle: TextStyle(fontSize: 16,color: Color(0XFF8E8E93),fontWeight: FontWeight.normal),
                        border: InputBorder.none
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 50,),
                UiHelper.CustomImage(imgurl: "assets/images/search.png"),

              ],
            ),
            SizedBox(height: 5,),
            Row(children: [
              SizedBox(width: 20,),
              Container(
                height:32,
                width: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white54),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(CupertinoIcons.home,color: Colors.white54,size: 20,),
                    SizedBox(width: 3,),
                    Text("IGTV",style: TextStyle(fontSize: 14,color: Color(0Xfff9f9f9)),)
                  ],
                ),
              ),
              SizedBox(width:20),
              Container(
                height: 32,
                width: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white54),
                  borderRadius: BorderRadius.circular(3),
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(CupertinoIcons.shopping_cart,color: Colors.white54,size: 20,),SizedBox(width: 3,),
                    Text("Shop",style: TextStyle(fontSize: 14,color: Color(0XFFF9F9F9)),)
                  ],
                )
              ),
              SizedBox(width:20),
              Container(
                  height: 32,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white54),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Style",style: TextStyle(fontSize: 14,color: Color(0XFFF9F9F9)),)
                    ],
                  )
              ),
              SizedBox(width:20),
              Container(
                  height: 32,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white54),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Sport",style: TextStyle(fontSize: 14,color: Color(0XFFF9F9F9)),)
                    ],
                  )
              ),
              SizedBox(width:20),
              Container(
                  height: 32,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white54),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Auto",style: TextStyle(fontSize: 14,color: Color(0XFFF9F9F9)),)
                    ],
                  )
              ),
            ],),
            Expanded(
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context,index) {
                return Container(
                  clipBehavior: Clip.antiAlias,
                  height: 124,
                    width: 124,
                  decoration: BoxDecoration(),
                  child: Image.network(arrContent[index]["img"].toString(),fit: BoxFit.cover,),
                );
              },itemCount: arrContent.length,
              ),
            )
          ],
        ) ,
    );


  }
}
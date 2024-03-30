import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PersonalExpencesView extends StatelessWidget {
  const PersonalExpencesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
            padding:  EdgeInsets.only(left:18.0,right: 18),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 28,),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 140,
                          width: 140,
                          padding: EdgeInsets.only(top:16,bottom: 10,left: 12,right: 12),
                          margin: EdgeInsets.only(left: 10,right: 4),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 4,
                                    offset: Offset(3,3),
                                    color: Colors.black.withOpacity(0.1)
                                ),
                                BoxShadow(
                                    blurRadius: 4,
                                    offset: Offset(-3,-3),
                                    color: Colors.black.withOpacity(0.1)
                                ),
                              ]
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Rs.",style: TextStyle(fontSize: 17,color: Colors.grey),),
                              SizedBox(height: 20,),
                              Center(child: Text("2500",style: TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.w500),)),
                            ],
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text("March 2024",style: TextStyle(fontSize: 22,color: Colors.black.withOpacity(0.9),fontWeight: FontWeight.w700),),

                        Container(
                          height: 100,
                          width:Get.width *0.9,
                          margin: EdgeInsets.only(left: 10,top: 18,right: 10,),
                          padding: EdgeInsets.all(10,),


                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 4,
                                    offset: Offset(3,3),
                                    color: Colors.black.withOpacity(0.1)
                                ),
                                BoxShadow(
                                    blurRadius: 4,
                                    offset: Offset(-3,-3),
                                    color: Colors.black.withOpacity(0.1)
                                ),
                              ]
                          ),
                          // alignment: Alignment.center,
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Grocery",style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(0.9),fontWeight: FontWeight.w700),),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Text("Rs ",style: TextStyle(fontSize: 18,color: Colors.grey.withOpacity(0.9))),
                                      SizedBox(width: 6,),

                                      Text("2500",style: TextStyle(fontSize: 26,color: Colors.indigoAccent.withOpacity(0.9)),),

                                    ],
                                  ),
                                  SizedBox(height: 6,),
                                  Text("29-03-2024 23:24",style: TextStyle(fontSize: 20,color: Colors.grey),),
                                ],
                              ),
                            ],
                          ),
                        ),]),
                ]
            ),
          )
      ),
    );

  }
}

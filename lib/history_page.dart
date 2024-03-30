import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:splitify/personal_expenses.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme:  IconThemeData(
          color: Colors.black,
          size: 38
        ),
      ),
      body: SafeArea(
          child: Padding(
            padding:  EdgeInsets.only(left:18.0,right: 18),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 36,),
                  Center(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap:(){
                              Get.to(() => const PersonalExpencesView());
                            },
                            child: Container(
                              height: Get.height *0.18,
                              width: Get.width *0.8,
                              padding: EdgeInsets.only(top:16,bottom: 10),
                              margin: EdgeInsets.only(left: 10,right: 10),
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
                              alignment: Alignment.center,
                              child: Text("PERSONAL EXPENSES",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.w500),),
                            ),
                          ),
                          SizedBox(height: 40,),
                          Container(
                            height: Get.height *0.18,
                            width: Get.width *0.8,
                            padding: EdgeInsets.only(top:16,bottom: 10),
                            margin: EdgeInsets.only(left: 10,right: 10),
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
                            alignment: Alignment.center,
                            child: Text("GROUP EXPENSES",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.w500),),
                          ),

                        ]),
                  ),

                ]
            ),
          )
      ),
    );

  }
}

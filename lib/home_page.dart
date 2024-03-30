import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splitify/history_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(Icons.info_outline,size: 24,color: Colors.indigoAccent,),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.menu,size: 28,color: Colors.black,),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(left:18.0,right: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8,),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(left:16.0,bottom: 24),
                  child: Text("Monthly expenses tracker",style: TextStyle(fontSize: 24,color: Colors.indigoAccent),),
                ),
              ),
              Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 160,
                      width: 160,
                      padding: EdgeInsets.only(top:16,bottom: 10),
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
                          children: [
                            Text("This month",style: TextStyle(fontSize: 17,color: Colors.grey),),
                            SizedBox(height: 40,),
                            Text("0",style: TextStyle(fontSize: 44,color: Colors.black,fontWeight: FontWeight.w700),),
                          ],
                        ),
                    ),
                    Container(
                      height: 180,
                      width: 160,
                      margin: EdgeInsets.only(left: 4,right: 10),

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
                      child: Text("Past Prices",style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(0.9),fontWeight: FontWeight.w700),),
                    ),]),
              ),
                  SizedBox(height: 50,),
                   Padding(
                     padding: EdgeInsets.only(left:24.0),
                     child: Text("Spent by:",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                   ),
                  SizedBox(height: 24,),
                  Padding(
                    padding: EdgeInsets.only(left:24.0),
                    child: Text("pranusha buchakka: 0",style: TextStyle(fontSize: 24,color: Colors.indigoAccent,fontWeight: FontWeight.w400),),
                  ),
                  SizedBox(height: 160,),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InkWell(
                onTap: (){
                  Get.to(() => const HistoryPage());
                },
                child: Container(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 12,bottom: 12),
                  margin: EdgeInsets.all(8),
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
                            offset: const Offset(-0.5,-0.5),
                            color: Colors.black.withOpacity(0.1)
                        )
                      ]
                  ),
                  child: Text("Show Expenses",style: TextStyle(fontSize: 24,color: Colors.black),),
                ),
              ),
              Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 4,
                          offset: const Offset(3,3),
                          color: Colors.black.withOpacity(0.1)
                      ),
                      BoxShadow(
                          blurRadius: 4,
                          offset: const Offset(-3,-3),
                          color: Colors.black.withOpacity(0.1)
                      )
                    ]
                ),
                child:const Icon(Icons.add,size: 32,color: Colors.indigoAccent,),
              ),
            ],
          ),
  ]
          ),
        )
        ),
    );
  }
}

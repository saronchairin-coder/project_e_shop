import 'package:e_shop/API_E_SHOP/SERVICES_API/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../MODEL_API/models/category.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  final service = API_Service();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    body: _apiBody(),

    );
  }
  Widget _apiBody() =>   FutureBuilder<Category>(

    future: service.getCategory(),
    builder: (context, snapshot) {

      if (snapshot.connectionState == ConnectionState.waiting) {
        return SpinKitHourGlass(color: Colors.blue);
      }

      if (snapshot.hasError) {
        return Text('Error: ${snapshot.error}');
      }

      final category = snapshot.data!;

      return Center(
        child: Column(
          children: [
            SizedBox(height: 10,),

            //text see all
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text("New Arraival",style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),),

                  Expanded(child: SizedBox(width: 1,)),

                  Text("See All ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 200,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueAccent.shade700,
                        blurStyle: BlurStyle.outer,
                        blurRadius: 1,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),

                      // image
                      Container(),

                      SizedBox(height: 220,),


                          // Text(" ${category.id}",style: TextStyle(
                          //   color: Colors.black,
                          //   fontSize: 20,
                          // ),),
                          SizedBox(width: 10,),
                          Text("${category.name}",style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),),

                      Text("${category.description}",style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),),
                    ],
                  ),


                  // child: ListTile(
                  //   textColor: Colors.blue,
                  //   tileColor: Colors.grey.shade100,
                  //
                  //
                  //   // leading: Text("ID  :${category.id}"),
                  //   title: Text("Name :${category.name}"),
                  //   subtitle: Text("Description : ${category.name}",),
                  //                ),
                ),
                SizedBox(width: 3,),
                Container(
                  width: 200,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueAccent.shade700,
                        blurStyle: BlurStyle.outer,
                        blurRadius: 1,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),

                      // image
                      Container(),

                      SizedBox(height: 220,),


                          // Text(" ${category.id}",style: TextStyle(
                          //   color: Colors.black,
                          //   fontSize: 20,
                          // ),),
                          SizedBox(width: 10,),
                          Text("${category.name}",style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),),

                      Text("${category.description}",style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),),
                    ],
                  ),


                  // child: ListTile(
                  //   textColor: Colors.blue,
                  //   tileColor: Colors.grey.shade100,
                  //
                  //
                  //   // leading: Text("ID  :${category.id}"),
                  //   title: Text("Name :${category.name}"),
                  //   subtitle: Text("Description : ${category.name}",),
                  //                ),
                ),


              ],
            ),
          ],
        ),
      );

      // get all
      // final categories = snapshot.data!;
      //     return ListView.builder(
      //       itemCount: categories.length,
      //       itemBuilder: (context, index) {
      //
      //         final c = categories[index];
      //
      //         // return ListTile(
      //         //   title: Text(c.name),
      //         //   subtitle: Text(c.description),
      //         //   leading: CircleAvatar(child: Text(c.id.toString())),
      //         // );
      //
      //         return Column(
      //           children: [
      //             SizedBox(height: 10,),
      //             //text see all
      //             Container(
      //               margin: EdgeInsets.symmetric(horizontal: 15),
      //               child: Row(
      //                 children: [
      //                   Text("New Arraival",style: TextStyle(
      //                     color: Colors.black,
      //                     fontSize: 20,
      //                   ),),
      //
      //                   Expanded(child: SizedBox(width: 1,)),
      //
      //                   Text("See All ",
      //                     style: TextStyle(
      //                       color: Colors.black,
      //                       fontSize: 20,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //             SizedBox(height: 10,),
      //
      //             Row(
      //               crossAxisAlignment: CrossAxisAlignment.center,
      //               mainAxisAlignment: MainAxisAlignment.spaceAround,
      //               children: [
      //                 Container(
      //                   width: 200,
      //                   height: 300,
      //                   decoration: BoxDecoration(
      //                     borderRadius: BorderRadius.circular(15),
      //                     color: Colors.white,
      //                     boxShadow: [
      //                       BoxShadow(
      //                         color: Colors.blueAccent.shade700,
      //                         blurStyle: BlurStyle.outer,
      //                         blurRadius: 1,
      //                       ),
      //                     ],
      //                   ),
      //                   child: Column(
      //                     children: [
      //                       SizedBox(height: 10,),
      //
      //                       // image
      //                       Container(),
      //
      //                       SizedBox(height: 220,),
      //
      //
      //                           // Text(" ${category.id}",style: TextStyle(
      //                           //   color: Colors.black,
      //                           //   fontSize: 20,
      //                           // ),),
      //                           SizedBox(width: 10,),
      //                           Text("${c.name}",style: TextStyle(
      //                             color: Colors.black,
      //                             fontSize: 20,
      //                           ),),
      //
      //                       Text("${c.description}",style: TextStyle(
      //                         color: Colors.black,
      //                         fontSize: 18,
      //                       ),),
      //                     ],
      //                   ),
      //
      //
      //                   // child: ListTile(
      //                   //   textColor: Colors.blue,
      //                   //   tileColor: Colors.grey.shade100,
      //                   //
      //                   //
      //                   //   // leading: Text("ID  :${category.id}"),
      //                   //   title: Text("Name :${category.name}"),
      //                   //   subtitle: Text("Description : ${category.name}",),
      //                   //                ),
      //                 ),
      //                 SizedBox(width: 3,),
      //                 Container(
      //                   width: 200,
      //                   height: 300,
      //                   decoration: BoxDecoration(
      //                     borderRadius: BorderRadius.circular(15),
      //                     color: Colors.white,
      //                     boxShadow: [
      //                       BoxShadow(
      //                         color: Colors.blueAccent.shade700,
      //                         blurStyle: BlurStyle.outer,
      //                         blurRadius: 1,
      //                       ),
      //                     ],
      //                   ),
      //                   child: Column(
      //                     children: [
      //                       SizedBox(height: 10,),
      //
      //                       // image
      //                       Container(),
      //
      //                       SizedBox(height: 220,),
      //
      //
      //                           // Text(" ${category.id}",style: TextStyle(
      //                           //   color: Colors.black,
      //                           //   fontSize: 20,
      //                           // ),),
      //                           SizedBox(width: 10,),
      //                           Text("${c.name}",style: TextStyle(
      //                             color: Colors.black,
      //                             fontSize: 20,
      //                           ),),
      //
      //                       Text("${c.description}",style: TextStyle(
      //                         color: Colors.black,
      //                         fontSize: 18,
      //                       ),),
      //                     ],
      //                   ),
      //
      //
      //                   // child: ListTile(
      //                   //   textColor: Colors.blue,
      //                   //   tileColor: Colors.grey.shade100,
      //                   //
      //                   //
      //                   //   // leading: Text("ID  :${category.id}"),
      //                   //   title: Text("Name :${category.name}"),
      //                   //   subtitle: Text("Description : ${category.name}",),
      //                   //                ),
      //                 ),
      //
      //
      //               ],
      //             ),
      //           ],
      //         );
      //
      //
      //       },
      //     );
    },
  );
}


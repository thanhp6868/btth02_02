import 'package:flutter/material.dart';

import '../utils/rfimage.dart';

class appDrawer extends StatefulWidget {
  const appDrawer({super.key});

  @override
  State<appDrawer> createState() => _appDrawerState();
}

class _appDrawerState extends State<appDrawer> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width*0.7,
      child: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 16.0,
              crossAxisSpacing: 16.0,
              children: categories.map((category) {
                String categoryImage = categoryImages[index];
                index++;
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  elevation: 10.0,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(100),
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width*0.7,
                      padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 235, 157, 41),
                            Color.fromARGB(255, 233, 96, 96)
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 218, 66, 200),
                            radius: 35,
                            child: Image.asset(
                              categoryImage,
                              width: 50.0,
                              height: 50.0,
                              
                            ),
                          ),
                          SizedBox(height: 6.0),
                          Text(
                            category,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
//  child: Padding(
//       padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(height: 3.0),
//           Expanded(
//             child: GridView.count(
//               crossAxisCount: 2,
//               mainAxisSpacing: 16.0,
//               crossAxisSpacing: 16.0,
//               children: categories.map((category) {
//                 String categoryImage = categoryImages[index];
//                 index++;
//                 return Card(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(16.0),
//                   ),
//                   elevation: 10.0,
//                   child: InkWell(
//                     splashColor: Colors.blue.withAlpha(100),
//                     onTap: () {},
//                     child: Container(
//                       alignment: Alignment.center,
//                       width: double.infinity,
//                       padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(16.0),
//                         gradient: LinearGradient(
//                           colors: [
//                             Color.fromARGB(255, 235, 157, 41),
//                             Color.fromARGB(255, 233, 96, 96)
//                           ],
//                         ),
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           CircleAvatar(
//                             backgroundColor: Color.fromARGB(255, 218, 66, 200),
//                             radius: 31,
//                             child: Image.asset(
//                               categoryImage,
//                               width: 50.0,
//                               height: 50.0,
//                             ),
//                           ),
//                           SizedBox(height: 6.0),
//                           Text(
//                             category,
//                             style: TextStyle(
//                               fontSize: 20.0,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 );
//               }).toList(),
//             ),
//           ),
//         ],
//       ),
//     )
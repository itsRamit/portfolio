import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/responsive/web/footer.dart';
import 'package:portfolio/responsive/Web/page1.dart';
import 'package:portfolio/responsive/Web/page_2.dart';
import 'package:portfolio/responsive/Web/page_3.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myWebAppBar,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              page_1(),
              page_2(),
              page_3(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}

// Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // open drawer
//                   myDrawer,

//                   // first half of page

//                   Expanded(
//                     flex: 2,
//                     child: Column(
//                       children: [
//                         // first 4 boxes in grid
//                         AspectRatio(
//                           aspectRatio: 4,
//                           child: SizedBox(
//                             width: double.infinity,
//                             child: GridView.builder(
//                               itemCount: 4,
//                               gridDelegate:
//                                   const SliverGridDelegateWithFixedCrossAxisCount(
//                                       crossAxisCount: 4),
//                               itemBuilder: (context, index) {
//                                 return MyBox();
//                               },
//                             ),
//                           ),
//                         ),

//                         // list of previous days
//                         Expanded(
//                           child: ListView.builder(
//                             itemCount: 7,
//                             itemBuilder: (context, index) {
//                               return const MyTile();
//                             },
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   // second half of page
//                   Expanded(
//                     child: Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Container(
//                             height: 400,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(8),
//                               color: Colors.grey[400],
//                             ),
//                           ),
//                         ),
//                         // list of stuff
//                         Expanded(
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(8),
//                                 color: Colors.grey[200],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),

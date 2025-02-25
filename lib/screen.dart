// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ShortsPage(),
//     );
//   }
// }
//
// class ShortsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Stack(
//         children: [
//           // Video and image content
//           Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                 Container(
//                 height: 300,
//                 width: 300,
//                 decoration: BoxDecoration(
//                   color: Colors.grey[800],
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Icon(Icons.play_arrow, size: 100, color: Colors.white),
//               ),
//               SizedBox(height: 20),
//         ],
//       ),
//     ),
//
//     // Right-side action buttons
//     Positioned(
//     right: 20,
//     bottom: 120,
//     child: Column(
//     mainAxisAlignment: MainAxisAlignment.end,
//     children: [
//     Icon(Icons.thumb_up, color: Colors.white),
//     Text('1.4M', style: TextStyle(color: Colors.white)),
//     SizedBox(height: 20),
//     Icon(Icons.thumb_down, color: Colors.white),
//     Text('Dislike', style: TextStyle(color: Colors.white)),
//     SizedBox(height: 20),
//     Icon(Icons.comment, color: Colors.white),
//     Text('4,095', style: TextStyle(color: Colors.white)),
//     SizedBox(height: 20),
//     Icon(Icons.share, color: Colors.white),
//     Text('19K', style: TextStyle(color: Colors.white)),
//     ],
//     ),
//     ),
//
//     // Bottom section: channel and song info
//     Positioned(
//     bottom: 80,
//     left: 20,
//     right: 20,
//     child: Row(
//     children: [
//     CircleAvatar(backgroundColor: Colors.white),
//     SizedBox(width: 10),
//     Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//     Text('@ThePlantiBoys',
//     style: TextStyle(color: Colors.white, fontSize: 16)),
//     ],
//     ),
//     Spacer(),
//     ElevatedButton(
//     onPressed: () {},
//     style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
//     child: Text('Subscribe'),
//     ),
//     ],
//     ),
//     ),
//
//     // Bottom nav bar
//     Positioned(
//     bottom: 0,
//     left: 0,
//     right: 0,
//     child: BottomNavigationBar(
//     backgroundColor: Colors.black,
//     selectedItemColor: Colors.white,
//     unselectedItemColor: Colors.grey,
//     items: [
//     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//     BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: 'Shorts'),
//     BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
//     BottomNavigationBarItem(icon: Icon(Icons.subscriptions), label: 'Subscriptions'),
//     BottomNavigationBarItem(icon: Icon(Icons.video_library), label: 'Library'),
//     ],
//     ),
//     ),
//     ],
//     ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() => runApp(BottomNavBarApp());

class BottomNavBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: 'Shorts'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.subscriptions), label: 'Subscriptions'),
            BottomNavigationBarItem(icon: Icon(Icons.video_library), label: 'Library'),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart' show kReleaseMode;

// void main() {
//   runApp(MyApp());
// }


void main() {
  runApp(
      DevicePreview(
        enabled: !kReleaseMode, // Enable DevicePreview in debug mode
        builder: (context) => MyApp(), // Launch MyApp
      ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

useInheritedMediaQuery: true,
locale: DevicePreview.locale(context), // For DevicePreview
builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: ShortsScreen(),
    );
  }
}

class ShortsScreen extends StatefulWidget {
  const ShortsScreen({super.key});

  @override
  State<ShortsScreen> createState() => _ShortsScreenState();
}

class _ShortsScreenState extends State<ShortsScreen> {
  final List<Map<String, dynamic>> shortsData = [
    {
      'color': Colors.red,
      'likes': '1.2M',
      'dislikes': '10K',
      'comments': '5,000',
      'shares': '2.3K',
      'profileName': '@RamRaju',
      'caption': 'happy sunday',
      'additems':'10K',
      'image':'assets/image/1.jpg',
    },
    {
      'color': Colors.blue,
      'likes': '2.5M',
      'dislikes': '15K',
      'comments': '8,200',
      'shares': '3.4K',
      'profileName': '@RaviKumar',
      'caption': 'sky is looking good ',
      'additems':'9K',
      'image':'assets/image/2.jpg',
    },
    {
      'color': Colors.green,
      'likes': '800K',
      'dislikes': '5K',
      'comments': '2,300',
      'shares': '1.2K',
      'profileName': '@sai',
      'caption': 'planets are looking nice',
      'additems':'19K',
      'image':'assets/image/3.jpg',
    },
    {
      'color': Colors.yellow,
      'likes': '1.8M',
      'dislikes': '9K',
      'comments': '6,700',
      'shares': '2K',
      'profileName': '@Sunny',
      'caption': 'Bright colors ️',
      'additems':'15K',
      'image':'assets/image/4.jpg',
    },
    {
      'color': Colors.purple,
      'likes': '3M',
      'dislikes': '12K',
      'comments': '9,000',
      'shares': '4K',
      'profileName': '@PurpleDreams',
      'caption': 'Dream big',
      'additems':'20K',
      'image':'assets/image/5.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Shorts", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
        actions: [
          Icon(Icons.search_rounded, size: 25, color: Colors.white),
          SizedBox(width: 20),
          Icon(Icons.more_vert, size: 25, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: shortsData.length,
        itemBuilder: (context, index) {
          final data = shortsData[index];
          return Stack(
            children: [
              Container(color: data['color'],
          child: Center(
          child: Image.network(
            data['image'],
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          ),
              ),
          Positioned(
            top: 40,
            left: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 28,width: 120,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey.withOpacity(0.30)),
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Icon(Icons.subscriptions_outlined,size: 12,color: Colors.white,),
                      Text('Subscriptions',style: TextStyle(color: Colors.white),)
                    ],
                  )
                ),
                SizedBox(width: 20,),
                Container(
                    height: 28,width: 70,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey.withOpacity(0.30)),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.live_tv_rounded,size: 12,color: Colors.white,),
                        SizedBox(width: 6,),
                        Text('Live',style: TextStyle(color: Colors.white),)
                      ],
                    )
                ),
                SizedBox(width: 20,),
                Container(
                    height: 28,width: 80,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey.withOpacity(0.30)),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.local_fire_department,size: 12,color: Colors.white,),
                        SizedBox(width: 6,),
                        Text('Trends',style: TextStyle(color: Colors.white),)
                      ],
                    )
                ),
              ],
            ),
          ),
              Positioned(
                right: 20,
                bottom: 120,
                child: Column(
                  children: [
                    Icon(Icons.thumb_up_off_alt_outlined, color: Colors.white),
                    Text(data['likes'], style: TextStyle(color: Colors.white)),
                    SizedBox(height: 20),
                    Icon(Icons.thumb_down_alt_outlined, color: Colors.white),
                    Text(data['dislikes'], style: TextStyle(color: Colors.white)),
                    SizedBox(height: 20),
                    Icon(Icons.comment_outlined, color: Colors.white),
                    Text(data['comments'], style: TextStyle(color: Colors.white)),
                    SizedBox(height: 20),
                    Icon(Icons.share_sharp, color: Colors.white),
                    Text(data['shares'], style: TextStyle(color: Colors.white)),
                    SizedBox(height: 20),
                   Icon(Icons.add_circle_outline_outlined, color: Colors.white),
                   Text(data['additems'], style: TextStyle(color: Colors.white)),

                  ],
                ),
              ),
              Positioned(
                bottom: 10,
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    CircleAvatar(backgroundColor: Colors.white),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              data['profileName'],
                              style: TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 23,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text('Subscribe', style: TextStyle(fontSize: 12, color: Colors.black)),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(data['caption'], style: TextStyle(fontSize: 12, color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined, color: Colors.white), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.play_circle_rounded, color: Colors.white), label: 'Shorts'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outlined, color: Colors.white, size: 30), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.subscriptions_outlined, color: Colors.white), label: 'Subscriptions'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outlined, color: Colors.white), label: 'You'),
        ],
      ),
    );
  }
}

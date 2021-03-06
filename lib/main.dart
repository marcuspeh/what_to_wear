import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var top = <String>['assets/images/10.jpg', 'assets/images/11.jpg', 'assets/images/12.jpg', 'assets/images/13.jpg', 'assets/images/14.jpg', 'assets/images/15.jpg', 'assets/images/16.jpg', 'assets/images/17.jpg', 'assets/images/18.jpg', 'assets/images/19.jpg', 'assets/images/20.jpg', 'assets/images/21.jpg', 'assets/images/22.jpg', 'assets/images/23.jpg', 'assets/images/24.jpg', 'assets/images/25.jpg', 'assets/images/26.jpg', 'assets/images/27.jpg', 'assets/images/28.jpg', 'assets/images/29.jpg', 'assets/images/30.jpg', 'assets/images/31.jpg', 'assets/images/32.jpg', 'assets/images/33.jpg', 'assets/images/34.jpg', 'assets/images/35.jpg', 'assets/images/36.jpg', 'assets/images/37.jpg', 'assets/images/38.jpg', 'assets/images/39.jpg', 'assets/images/40.jpg', 'assets/images/41.jpg', 'assets/images/42.jpg', 'assets/images/43.jpg', 'assets/images/44.jpg', 'assets/images/45.jpg', 'assets/images/46.jpg', 'assets/images/47.jpg', 'assets/images/48.jpg', 'assets/images/49.jpg', 'assets/images/50.jpg', 'assets/images/51.jpg', 'assets/images/52.jpg', 'assets/images/53.jpg', 'assets/images/54.jpg', 'assets/images/55.jpg', 'assets/images/56.jpg', 'assets/images/57.jpg', 'assets/images/58.jpg', 'assets/images/59.jpg', 'assets/images/60.jpg', 'assets/images/61.jpg', 'assets/images/62.jpg', 'assets/images/63.jpg', 'assets/images/64.jpg', 'assets/images/65.jpg', 'assets/images/66.jpg', 'assets/images/67.jpg', 'assets/images/68.jpg', 'assets/images/69.jpg', 'assets/images/70.jpg', 'assets/images/71.jpg', 'assets/images/72.jpg', 'assets/images/73.jpg', 'assets/images/74.jpg', 'assets/images/75.jpg', 'assets/images/76.jpg', 'assets/images/77.jpg', 'assets/images/78.jpg', 'assets/images/79.jpg', 'assets/images/80.jpg', 'assets/images/81.jpg', 'assets/images/82.jpg', 'assets/images/83.jpg', 'assets/images/84.jpg', 'assets/images/85.jpg', 'assets/images/86.jpg', 'assets/images/87.jpg', 'assets/images/88.jpg', 'assets/images/89.jpg', 'assets/images/90.jpg', 'assets/images/91.jpg', 'assets/images/92.jpg', 'assets/images/93.jpg', 'assets/images/94.jpg', 'assets/images/95.jpg', 'assets/images/96.jpg', 'assets/images/97.jpg', 'assets/images/98.jpg', 'assets/images/99.jpg', 'assets/images/100.jpg', 'assets/images/101.jpg', 'assets/images/102.jpg', 'assets/images/103.jpg', 'assets/images/104.jpg', 'assets/images/105.jpg', 'assets/images/106.jpg', 'assets/images/107.jpg', 'assets/images/108.jpg', 'assets/images/109.jpg'];
  var bottom = <String>['assets/images/110.jpg', 'assets/images/111.jpg', 'assets/images/112.jpg', 'assets/images/113.jpg', 'assets/images/114.jpg', 'assets/images/115.jpg', 'assets/images/116.jpg', 'assets/images/117.jpg', 'assets/images/118.jpg', 'assets/images/119.jpg', 'assets/images/120.jpg', 'assets/images/121.jpg', 'assets/images/122.jpg', 'assets/images/123.jpg', 'assets/images/124.jpg', 'assets/images/125.jpg', 'assets/images/126.jpg', 'assets/images/127.jpg', 'assets/images/128.jpg', 'assets/images/129.jpg', 'assets/images/130.jpg', 'assets/images/131.jpg', 'assets/images/132.jpg', 'assets/images/133.jpg', 'assets/images/134.jpg', 'assets/images/135.jpg', 'assets/images/136.jpg', 'assets/images/137.jpg', 'assets/images/138.jpg', 'assets/images/139.jpg', 'assets/images/140.jpg', 'assets/images/141.jpg', 'assets/images/142.jpg', 'assets/images/143.jpg', 'assets/images/144.jpg', 'assets/images/145.jpg', 'assets/images/146.jpg', 'assets/images/147.jpg', 'assets/images/148.jpg', 'assets/images/149.jpg'];
  var rng = new Random();
  String first = 'assets/images/10.jpg';
  String second = 'assets/images/110.jpg';

  @override
  Widget build(BuildContext content) {
    return Scaffold(
      appBar: AppBar(
        title: Text('What to wear?'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Image.asset(first),
            Image.asset(second),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => setState((){
          first = top[rng.nextInt(top.length)];
          second = bottom[rng.nextInt(bottom.length)];
        },
        ),
        label: Text('Generate'),
        backgroundColor: Colors.indigo,
      ),
    );
  }
}

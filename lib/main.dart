import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      title: 'Flutter Demo',
      home: MyHomePage(
        // โครงสร้างหน้าจอพื้นฐาน
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ให้โครงสร้างแอปพื้นฐาน
      appBar: AppBar(
        title: const Text('wellcom'),
        backgroundColor: const Color.fromARGB(
          255,
          230,
          83,
          132,
        ), // ปรับแต่งสี AppBar
      ),
      body: Center(
        child: Container(
          // Container นี้จะถูกจัดกึ่งกลาง
          width: 300,
          height: 100,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 114, 24, 54),
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          ),
          child: const Text('Constant Body Text'),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // การกระทำที่จะทำเมื่อกดปุ่ม
          print('FAB Pressed!');
        },
        child: const Icon(Icons.add), // ไอคอนสำหรับปุ่ม
      ),
    );
  }
}

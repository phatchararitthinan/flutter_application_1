import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // เพิ่มบรรทัดนี้

void main() {
  // จุดเริ่มต้นของแอป Flutter
  runApp(const MyApp()); // บอก Flutter ว่าวิดเจ็ตใดคือรากฐานของแอป
}

// MyApp โดยทั่วไปคือวิดเจ็ตรากฐานของแอปพลิเคชันของคุณ
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    // เมธอด build() ส่งคืนโครงสร้างต้นไม้วิดเจ็ตสำหรับวิดเจ็ตนี้
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      // โครงสร้างหน้าจอพื้นฐาน
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  // ภายในเมธอด build ของ MyHomePage
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chater 4'),
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        // เพิ่ม Padding รอบ Column
        padding: const EdgeInsets.all(0.0),
        child: Column(
          // ใช้ Column สำหรับเลย์เอาต์แนวตั้ง
          //crossAxisAlignment:
          //CrossAxisAlignment.center, // จัดกึ่งกลางไอเท็มแนวนอน
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // วิดเจ็ตต่างๆ จะมาที่นี่ภายในลิสต์ children ของ Column
            Image.network('https://picsum.photos/seed/flutter/400/200'),
            const SizedBox(height: 20),
            Image.asset('assets/01.jpg'),
            const SizedBox(height: 16.0),
            Image.asset(
              'assets/images/logo.png', // ใช้พาธ asset จริงของคุณ
              height: 100,
              errorBuilder: (context, error, stackTrace) {
                // แนวปฏิบัติที่ดีแม้สำหรับ assets, เผื่อกรณีพาธผิด
                return const Text(
                  'เกิดข้อผิดพลาดในการโหลด asset',
                  style: TextStyle(color: Colors.black),
                );
              },
            ),
            const SizedBox(height: 16.0),
            Container(
              width: 300.0,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 248, 144, 179),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                'HELLLO FLUTTER',
                style: GoogleFonts.lacquer(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // จัดกึ่งกลางปุ่มแนวนอน
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    print('กดปุ่ม Elevated');
                  },
                  child: const Text('Elevated'),
                ),
                const SizedBox(width: 10), // เว้นวรรคระหว่างปุ่ม
                OutlinedButton(
                  onPressed: () {
                    print('กดปุ่ม Outlined');
                  },
                  child: const Text('Outlined'),
                ),
                const SizedBox(width: 10), // เว้นวรรคระหว่างปุ่ม
                TextButton(
                  onPressed: () {
                    print('กดปุ่ม Text');
                  },
                  child: const Text('Text'),
                ),
              ],
            ),
            const SizedBox(height: 10.0,),
            IconButton(
              onPressed: () {
                print('กดไอคอน Info');
              },
              icon: const Icon(Icons.info_outline),
              iconSize: 50,
              tooltip: 'ข้อมูล', // ข้อความช่วยเหลือ
              color: Colors.blueGrey,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

// ======================
// Stateless Widget
// ======================
class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// ======================
// Widget Tampilan, Layout, dan Interaksi
// ======================
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contoh Widget Flutter'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ===== Widget Tampilan =====
            Text(
              'Halo Flutter!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            Icon(
              Icons.star,
              size: 50,
              color: Colors.blue,
            ),

            SizedBox(height: 30),

            // ===== Widget Layout =====
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person),
                SizedBox(width: 8),
                Text('Adinda'),
              ],
            ),

            SizedBox(height: 30),

            // ===== Widget Interaksi =====
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Tombol ditekan!'),
                  ),
                );
              },
              child: Text('Klik Saya'),
            ),
          ],
        ),
      ),
    );
  }
}

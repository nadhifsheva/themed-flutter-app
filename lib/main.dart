import 'package:flutter/material.dart';

void main() {
  runApp(const CalmApp());
}

class CalmApp extends StatelessWidget {
  const CalmApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Latihan Mobile",
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF4F1EE), 
        colorScheme: const ColorScheme.light(
          primary: Color(0xFFA5C9CA), 
          secondary: Color(0xFFF6C6EA), 
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Color(0xFF3E3E3E),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const CalmHome(),
    );
  }
}

class CalmHome extends StatefulWidget {
  const CalmHome({super.key});

  @override
  State<CalmHome> createState() => _CalmHomeState();
}

class _CalmHomeState extends State<CalmHome> {
  String message = "Sheva Nadhif Gazzauhar";

  void _changeMessage() {
    setState(() {
      message = "Hai Guyss";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome Bro"),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _changeMessage,
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                foregroundColor: Colors.black,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                "Tap Tap",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

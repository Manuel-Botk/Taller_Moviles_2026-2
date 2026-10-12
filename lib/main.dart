import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/chats_screen.dart';
import 'screens/laboratory_screen.dart';

void main() {
  runApp(const TilinHubApp());
}

class TilinHubApp extends StatelessWidget {
  const TilinHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TilinHub',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark, 
        colorSchemeSeed: const Color(0xFF14E8B4), 
        scaffoldBackgroundColor: const Color(0xFF121417), 
      ),
      home: const MainScreen(),
    );
  }
}


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0; // 0 = Home, 1 = Chats, 2 = Laboratorio

  // Título del AppBar 
  String _title() {
    if (_selectedIndex == 0) return 'TilinHub · Descubre';
    if (_selectedIndex == 1) return 'Chats';
    return 'Laboratorio de widgets';
  }

  Widget _body() {
    if (_selectedIndex == 0) return const HomeScreen();
    if (_selectedIndex == 1) return const ChatsScreen();
    return const LaboratoryScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1B2627),
        foregroundColor: const Color(0xFFE5A91E), 
        elevation: 0,
        title: Text(
          _title(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Color.fromARGB(255, 224, 220, 193)),
          ),
        ],
      ),
      body: _body(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: const Color(0xFF1B2627),
        selectedItemColor: const Color.fromARGB(255, 224, 175, 61), 
        unselectedItemColor: const Color(0xFF8FA3A0),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_esports), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.bolt), label: 'Laboratorio'),
        ],
      ),
    );
  }
}
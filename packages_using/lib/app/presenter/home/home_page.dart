import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<int>> getNumbers() async {
    await Future.delayed(const Duration(seconds: 4));
    return [1,2,3,4,5,6,7];
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela inicial'),
      ),
      body: const Center(
        
      ),
    );
  }
}

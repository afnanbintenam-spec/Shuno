import 'package:flutter/material.dart';
import 'package:shuno/Pallete.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shuno'),
        centerTitle: true,
        leading: const Icon(Icons.menu),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),

          // Avatar Circle Frame
          Center(
            child: Container(
              height: 160,
              width: 160,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Pallete.assistantCircleColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: ClipOval(
                  child: Image.asset(
                    'Assets/virtualAssistant.png',
                    fit: BoxFit.contain,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

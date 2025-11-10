import 'package:atividade/pages/chat_page.dart';
import 'package:atividade/pages/product_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Atividades',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/products': (context) => const ProductPage(),
        '/chat': (context) => const ChatPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Escolha uma atividade')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _NavigationTile(
            title: 'Produtos',
            description: 'Grade com cards de produtos (Atividade 4)',
            routeName: '/products',
          ),
          _NavigationTile(
            title: 'Chats',
            description: 'Lista de conversas (Atividade 3)',
            routeName: '/chat',
          ),
        ],
      ),
    );
  }
}

class _NavigationTile extends StatelessWidget {
  final String title;
  final String description;
  final String routeName;

  const _NavigationTile({
    required this.title,
    required this.description,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () => Navigator.pushNamed(context, routeName),
      ),
    );
  }
}

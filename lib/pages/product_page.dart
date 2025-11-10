import 'package:atividade/components/atividade4.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductPage(),
    );
  }
}

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  final List<Map<String, dynamic>> produtos = const [
    {
      'nome': 'Tênis Esportivo',
      'preco': 299.99,
      'imageUrl':
          'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=60',
    },
    {
      'nome': 'Relógio Masculino',
      'preco': 499.99,
      'imageUrl':
          'https://images.unsplash.com/photo-1522312346375-d1a52e2b99b3?auto=format&fit=crop&w=600&q=60',
    },
    {
      'nome': 'Mochila de Couro',
      'preco': 189.90,
      'imageUrl':
          'https://images.unsplash.com/photo-1585238342028-4cbc5219a1c5?auto=format&fit=crop&w=600&q=60',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produtos'),
        backgroundColor: Colors.black,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: produtos.length,
        itemBuilder: (context, index) {
          final p = produtos[index];
          return CardProduto(
            nome: p['nome'],
            preco: p['preco'],
            imageUrl: p['imageUrl'],
          );
        },
      ),
    );
  }
}

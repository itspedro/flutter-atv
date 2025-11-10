import 'package:atividade/components/atividade3.dart';
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
      home: ChatPage(),
    );
  }
}

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  final List<Map<String, String>> chats = const [
    {
      'nome': 'Maria Silva',
      'ultimaMensagem': 'Oi! Como você está?',
      'urlFoto': 'https://randomuser.me/api/portraits/women/44.jpg',
      'horario': '09:45',
    },
    {
      'nome': 'João Pereira',
      'ultimaMensagem': 'Vamos marcar algo no fim de semana?',
      'urlFoto': 'https://randomuser.me/api/portraits/men/32.jpg',
      'horario': 'Ontem',
    },
    {
      'nome': 'Ana Costa',
      'ultimaMensagem': 'Enviado o relatório!',
      'urlFoto': 'https://randomuser.me/api/portraits/women/68.jpg',
      'horario': 'Seg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chats')),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          final chat = chats[index];
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 16.0,
            ),
            child: ChatListItem(
              nome: chat['nome']!,
              ultimaMensagem: chat['ultimaMensagem']!,
              urlFoto: chat['urlFoto']!,
              horario: chat['horario']!,
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ChatListItem extends StatelessWidget {
  final String nome;
  final String ultimaMensagem;
  final String urlFoto;
  final String horario;

  const ChatListItem({
    super.key,
    required this.nome,
    required this.ultimaMensagem,
    required this.urlFoto,
    required this.horario,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(radius: 28, backgroundImage: NetworkImage(urlFoto)),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      nome,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(horario, style: TextStyle(color: Colors.grey)),
                ],
              ),
              Text(ultimaMensagem, style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),
      ],
    );
  }
}

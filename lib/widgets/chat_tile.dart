import 'package:flutter/material.dart';

// Fila de una conversación 
class ChatTile extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;
  final int unread; 

  const ChatTile({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    required this.avatarUrl,
    required this.unread,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: Row(
            children: [
              CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(avatarUrl),
              ),
              const SizedBox(width: 12),
              // Nombre y último mensaje
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFE8ECE9),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      message,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Color(0xFF8FA3A0)),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              // Hora e indicador de no leídos
              Column(
                children: [
                  Text(
                    time,
                    style: TextStyle(
                      fontSize: 12,
                      color: unread > 0 ? const Color.fromARGB(255, 228, 215, 34) : const Color.fromARGB(255, 163, 162, 143),
                    ),
                  ),
                  const SizedBox(height: 6),
                  if (unread > 0)
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 7, vertical: 3),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 232, 211, 20),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        '$unread',
                        style: const TextStyle(
                          color: Color(0xFF121417),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  else
                    const SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
        const Divider(height: 1, indent: 82, color: Color(0xFF2A3D3E)),
      ],
    );
  }
}
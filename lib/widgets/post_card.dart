import 'package:flutter/material.dart';

// Tarjeta de publicación
class PostCard extends StatefulWidget {
  final String userName;
  final String avatarUrl;
  final String imageUrl;
  final String description;
  final double imageHeight; 
  final int likes;

  const PostCard({
    super.key,
    required this.userName,
    required this.avatarUrl,
    required this.imageUrl,
    required this.description,
    required this.imageHeight,
    required this.likes,
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool _liked = false;
  late int _likes = widget.likes; 

  void _toggleLike() {
    setState(() {
      _liked = !_liked;
      if (_liked) {
        _likes++;
      } else {
        _likes--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: const Color(0xFF1B2627),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0x3314E8B4)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Imagen principal
          Image.network(
            widget.imageUrl,
            height: widget.imageHeight,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          // Avatar y nombre
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 14,
                  backgroundImage: NetworkImage(widget.avatarUrl),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    widget.userName,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFE8ECE9),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Descripción
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 6, 10, 0),
            child: Text(
              widget.description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 13, color: Color(0xFF8FA3A0)),
            ),
          ),
          // Me gusta y comentarios
          Row(
            children: [
              IconButton(
                onPressed: _toggleLike,
                icon: Icon(
                  _liked ? Icons.favorite : Icons.favorite_border,
                  color: _liked
                      ? const Color(0xFFE5A91E)
                      : const Color(0xFF8FA3A0),
                ),
              ),
              Text('$_likes', style: const TextStyle(color: Color(0xFFE8ECE9))),
              const SizedBox(width: 14),
              const Icon(Icons.chat_bubble_outline,
                  size: 20, color: Color(0xFF8FA3A0)),
            ],
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../widgets/chat_tile.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF121417),
      // ListView 
      child: ListView(
        children: const [
                    ChatTile(
            name: 'ElMatador',
            message: 'Me cago en la puta, no quiero spoilers 😡',
            time: '11:00',
            avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHw4gEVQrWFnf2tqcgDSuuMPYAwRzuOSqLaCeij6vXpAWw9BKCLU3WkiXn&s=10',
            unread: 1,
          ),
          ChatTile(
            name: 'Luna_Otaku',
            message: '¿Viste el nuevo episodio? 😍',
            time: '10:42',
            avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4djmW2Olagi5jcPRyKzrSwilY25S1vOvSCXCj_ROAZA&s=10',
            unread: 2,
          ),
          ChatTile(
            name: 'DarkKnight99',
            message: '¿Jugamos esta noche?',
            time: '10:15',
            avatarUrl: 'https://wallpapers.com/images/featured/lindo-perfil-de-anime-0lifptfs0jd9fml3.jpg',
            unread: 0,
          ),
          ChatTile(
            name: 'Mika_Cosplay',
            message: 'Ya terminé mi traje para la convención',
            time: '09:30',
            avatarUrl: 'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/392177261/original/dc71edee38b6a6ae07992b6bc1d01e25def7b7a3/draw-pfp-avatar-icon-album-cover-portrait-of-your-oc-vtuber-anime-character.png',
            unread: 5,
          ),
          ChatTile(
            name: 'PixelMateo',
            message: 'Te paso el link del gameplay',
            time: 'Ayer',
            avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJQNEXBfcd3XVODBdPDoD8Sm2PQamxkR1pzmsO3lo6Ng&s=10',
            unread: 0,
          ),
          ChatTile(
            name: 'Club de Manga',
            message: 'Nuevo capítulo disponible 📖',
            time: 'Ayer',
            avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKt1QDLHvzsXIzFUNG45yf0SZyOmUDzHlt0DqxenzzWw&s=10',
            unread: 1,
          ),
          ChatTile(
            name: 'Gremio de Flutter',
            message: 'Recuerden el meetup de este viernes',
            time: 'Lun',
            avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwBwbOrtasIKejpO_xjxXLja9T2r8-z6NBu4ieWC9reQ&s=10',
            unread: 12,
          ),
        ],
      ),
    );
  }
}
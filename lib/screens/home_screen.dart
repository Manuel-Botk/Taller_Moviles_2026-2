import 'package:flutter/material.dart';

import '../widgets/post_card.dart';
import '../widgets/promotional_banner.dart';
import '../widgets/image_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ListView
    return ListView(
      children: [
        // 1. Banner
        const PromotionalBanner(
          title: '¡Únete al gremio!',
          description: 'Comparte fanarts, teorías y gameplays.',
          icon: Icons.sports_esports,
          colorStart: Color.fromARGB(255, 238, 182, 53), // oro
          colorEnd: Color.fromARGB(255, 139, 96, 4), // bronce
          buttonText: 'Unirme',
        ),

        // 2. Carrusel horizontal
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 4, 16, 8),
          child: Text(
            'Explora categorías',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFFE8ECE9),
            ),
          ),
        ),
        const ImageCarousel(),

        // 3. Publicaciones 
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 4),
          child: Text(
            'Publicaciones',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFFE8ECE9),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              // Columna izquierda
              Expanded(
                child: Column(
                  children: [
                    PostCard(
                      userName: 'Luna_Otaku',
                      avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4djmW2Olagi5jcPRyKzrSwilY25S1vOvSCXCj_ROAZA&s=10',
                      imageUrl: 'https://i.redd.it/zy0jxfr2ygz91.jpg',
                      description: 'Fanart del mejor duo 🔥',
                      imageHeight: 220,
                      likes: 24,
                    ),
                    PostCard(
                      userName: 'DarkKnight99',
                      avatarUrl: 'https://wallpapers.com/images/featured/lindo-perfil-de-anime-0lifptfs0jd9fml3.jpg',
                      imageUrl: 'https://sm.ign.com/t/ign_es/screenshot/default/eresp_a674.1280.jpg',
                      description: 'Mi build de conquistador en Elden Ring ⚔️.',
                      imageHeight: 150,
                      likes: 12,
                    ),
                    PostCard(
                      userName: 'Mika_Cosplay',
                      avatarUrl: 'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/392177261/original/dc71edee38b6a6ae07992b6bc1d01e25def7b7a3/draw-pfp-avatar-icon-album-cover-portrait-of-your-oc-vtuber-anime-character.png',
                      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkHgUriusnZ2UCOcbNVDwn-39h8g-E19Z0Ix7jJPR6ul5szphn_-CMC60z&s=10',
                      description: 'Mi colección de figuras actual.',
                      imageHeight: 160,
                      likes: 38,
                    ),
                    PostCard(
                      userName: 'PixelMateo',
                      avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJQNEXBfcd3XVODBdPDoD8Sm2PQamxkR1pzmsO3lo6Ng&s=10',
                      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGhYdPhFnpI70F8RqfLqSrU0DF8584F_XHdMIlm02d-xl5rFyDJSeLyDw&s=10',
                      description: 'Encontre este nuevo Roleplay y me encanto 👌.',
                      imageHeight: 230,
                      likes: 9,
                    ),
                  ],
                ),
              ),
              // Columna derecha
              Expanded(
                child: Column(
                  children: [
                    PostCard(
                      userName: 'ElMatador',
                      avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHw4gEVQrWFnf2tqcgDSuuMPYAwRzuOSqLaCeij6vXpAWw9BKCLU3WkiXn&s=10',
                      imageUrl: 'https://i.ytimg.com/vi/FkH9WKDpcEM/maxresdefault.jpg',
                      description: 'El mas papucho 💋.',
                      imageHeight: 160,
                      likes: 38,
                    ),
                    PostCard(
                      userName: 'DanTuPapi',
                      avatarUrl: 'https://wallpapers.com/images/thumbnail/gaming-profile-pictures-dmdrdbv3300u7oh5.jpg',
                      imageUrl: 'https://i.ytimg.com/vi/MprAa9rv2Cs/maxresdefault.jpg',
                      description: 'Me folle a esta cabrona 😎.',
                      imageHeight: 230,
                      likes: 9,
                    ),
                    PostCard(
                      userName: 'JuanitoGamer',
                      avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8v67U-sDQkOMBBBZ09N3YmniyDDTr78BrjZA4SjIT6_-mnLz69AjHWjj0&s=10',
                      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTd2dt8_VWogQKNIKkV0OGQUCpRVYyJ2efbITmKe2UuOg&s=10',
                      description: 'Cosplay de mi personaje favorito 🤟.',
                      imageHeight: 220,
                      likes: 24,
                    ),
                    PostCard(
                      userName: 'FurriLover',
                      avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUJ2Hbaku4gQuSoFJyFghUtR8lc7exxw77nvCQXYnfnQ&s=10',
                      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR96y0DvrOKK7QCtckhYh5KiG8MgfJJlN-vkNnCMO_b60xscD3lNadE48c&s=10',
                      description: 'En la convención con mi bestia.',
                      imageHeight: 150,
                      likes: 12,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

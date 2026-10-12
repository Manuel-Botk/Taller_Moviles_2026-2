## Autor
Juan Manuel Bejarano Mendez - 30000130961

# TilinHub

Aplicación móvil hecha con **Flutter y Dart** para la comunidad gamer y otaku: videojuegos, gameplay, anime, manga, cómics y juegos de rol. Combina el estilo de **Telegram** (chats) con el de **Pinterest** (publicaciones en mosaico) en una estética de fusión ancestral y sci-fi: obsidiana, jade y oro con energía turquesa.

## Secciones
- **Home:** banner "¡Únete al gremio!", carrusel horizontal de categorías (Anime, Manga, Cómics, RPG, Gameplay) y publicaciones (`PostCard`) con botón "Me gusta".
- **Chats:** lista de conversaciones con el widget `ChatTile`.
- **Laboratorio de widgets:** "Nivel de poder" de 0 a 5 con botones + y - que usa `setState()`.

La navegación se hace con `BottomNavigationBar` y el título del `AppBar` cambia según la sección.

## Paleta de colores
| Uso | Color |
|---|---|
| Fondo (obsidiana) | `#121417` |
| Tarjetas (jade apagado) | `#1B2627` |
| Energía / acentos (turquesa) | `#14E8B4` |
| Banner (oro a bronce) | `#E5A91E` a `#B07D10` |

## Estructura
```
lib/
├── main.dart
├── screens/
│   ├── home_screen.dart
│   ├── chats_screen.dart
│   └── laboratory_screen.dart
└── widgets/
    ├── post_card.dart
    ├── promotional_banner.dart
    ├── image_carousel.dart
    ├── chat_tile.dart
    └── numeric_counter.dart
```

## Cómo ejecutarlo
1. Instalar [Flutter](https://docs.flutter.dev/get-started/install).
2. Clonar el repositorio: `git clone <URL-DEL-REPOSITORIO>`
3. Entrar a la carpeta: `cd NOMBRE_DE_LA_CARPETA`
4. Instalar dependencias: `flutter pub get`
5. Abrir un emulador o conectar un celular y ejecutar: `flutter run`

> Las imágenes se cargan desde internet, por lo que se necesita conexión.


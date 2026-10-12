import 'package:flutter/material.dart';

// Carrusel horizontal
class ImageCarousel extends StatelessWidget {
  const ImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150, 
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        children: const [
          CarouselCard(
            title: 'Anime',
            imageUrl: 'https://static0.srcdn.com/wordpress/wp-content/uploads/2026/06/fullmetal-alchemist-brotherhood-and-witch-hat-atelier-backgrounds-behind-anya-from-spy-x-family-anime-featured-image-1.png?w=1600&h=900&fit=crop',
          ),
          CarouselCard(
            title: 'Manga',
            imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT86mdRtbs5I-TFtjQPjTE8cRMDJfKdBZ6AFhCFulcQl6dhX6Q60guxJ4GJ&s=10',
          ),
          CarouselCard(
            title: 'Cosplay',
            imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSC0oEjSTBqPxSJygjLGGHuehd0L3SPdqmXZppsMvGbnBn4q0t_IcM9cN4&s=10',
          ),
          CarouselCard(
            title: 'Cómics',
            imageUrl: 'https://i.redd.it/lmu15fw5t2fc1.png',
          ),

          CarouselCard(
            title: 'Gameplay',
            imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnIfdPIHjq0Kaz0AeuYIuBiu9dyPqKpTpx7XjYoCM2Dg&s=10',
          ),
          CarouselCard(
            title: 'RPG',
            imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQX2rwzp9LMs_xmM2c7FORWIWb9tHmbMjTD_IvgBPFAdA&s=10',
          ),
        ],
      ),
    );
  }
}

// Tarjeta individual
class CarouselCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const CarouselCard({super.key, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      margin: const EdgeInsets.only(right: 10),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color.fromARGB(197, 197, 154, 54),
          width: 2,
        ),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 6),
          color: const Color(0xFF1B2627),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color.fromARGB(255, 226, 182, 80),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

// late String code, name, type, medium, country, description, epoch, artist;
// late num year, dimensions;
//  File? image;

import 'dart:io';

import 'package:dashboard/features/add_artwork/presentation/views/domain/entities/review_entity.dart';

class ArtworkEntity {
  final String code;
  final String name;
  final String type;
  final String medium;
  final String country;
  final String description;
  final String epoch;
  final String artist;
  final String dimensions;
  final num year;
  final File image;
  String? imageUrl;
  final List<ReviewEntity> reviews;

  ArtworkEntity(
      {required this.code,
      required this.name,
      required this.type,
      required this.medium,
      required this.country,
      required this.description,
      required this.epoch,
      required this.artist,
      required this.reviews,
      required this.year,
      required this.dimensions,
      required this.image,
      this.imageUrl});
}

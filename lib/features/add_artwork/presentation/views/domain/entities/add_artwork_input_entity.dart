// late String code, name, type, medium, country, description, epoch, artist;
// late num year, dimensions;
//  File? image;

import 'dart:io';

class AddArtworkInputEntity {
  final String code;
  final String name;
  final String type;
  final String medium;
  final String country;
  final String description;
  final String epoch;
  final String artist;
  final num year;
  final num dimensions;
  final File image;
  String? imageUrl;

  AddArtworkInputEntity(
      {required this.code,
      required this.name,
      required this.type,
      required this.medium,
      required this.country,
      required this.description,
      required this.epoch,
      required this.artist,
      required this.year,
      required this.dimensions,
      required this.image,
      this.imageUrl});
}

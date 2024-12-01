import 'dart:io';

import 'package:dashboard/features/add_artwork/presentation/views/domain/entities/add_artwork_input_entity.dart';

class AddArtworkInputModel {
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

  AddArtworkInputModel(
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

  factory AddArtworkInputModel.fromEntity(
      AddArtworkInputEntity addArtworkInputEntity) {
    return AddArtworkInputModel(
        code: addArtworkInputEntity.code,
        name: addArtworkInputEntity.name,
        type: addArtworkInputEntity.type,
        medium: addArtworkInputEntity.medium,
        country: addArtworkInputEntity.country,
        description: addArtworkInputEntity.description,
        epoch: addArtworkInputEntity.epoch,
        artist: addArtworkInputEntity.artist,
        year: addArtworkInputEntity.year,
        dimensions: addArtworkInputEntity.dimensions,
        image: addArtworkInputEntity.image,
        imageUrl: addArtworkInputEntity.imageUrl);
  }

  toJson() {
    return {
      'code': code,
      'name': name,
      'type': type,
      'medium': medium,
      'country': country,
      'description': description,
      'epoch': epoch,
      'artist': artist,
      'year': year,
      'dimensions': dimensions,
      'imageUrl': imageUrl
    };
  }
}

import 'dart:io';

import 'package:dashboard/features/add_artwork/data/models/review_model.dart';
import 'package:dashboard/features/add_artwork/presentation/views/domain/entities/artwork_entity.dart';

class ArtworkModel {
  final String code;
  final String name;
  final String type;
  final String medium;
  final String country;
  final String description;
  final String epoch;
  final String artist;
  final num year;
  final List<ReviewModel> reviews;
  final String dimensions;
  final File image;
  String? imageUrl;

  ArtworkModel(
      {required this.code,
      required this.name,
      required this.type,
      required this.medium,
      required this.country,
      required this.description,
      required this.epoch,
      required this.reviews,
      required this.artist,
      required this.year,
      required this.dimensions,
      required this.image,
      this.imageUrl});

  factory ArtworkModel.fromEntity(ArtworkEntity addArtworkInputEntity) {
    return ArtworkModel(
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
      imageUrl: addArtworkInputEntity.imageUrl,
      reviews: addArtworkInputEntity.reviews
          .map((e) => ReviewModel.fromEntity(e))
          .toList(),
    );
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
      'imageUrl': imageUrl,
      'reviews': reviews.map((e) => e.toJson()).toList(),
    };
  }
}

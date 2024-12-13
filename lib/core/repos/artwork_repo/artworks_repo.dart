import 'package:dartz/dartz.dart';
import 'package:dashboard/core/errors/failures.dart';
import 'package:dashboard/features/add_artwork/presentation/views/domain/entities/artwork_entity.dart';

abstract class ArtworksRepo {
  Future<Either<Failure, void>> addArtwork(ArtworkEntity AddArtworkInputEntity);
}

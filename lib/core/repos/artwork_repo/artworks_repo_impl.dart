import 'package:dartz/dartz.dart';
import 'package:dashboard/core/errors/failures.dart';
import 'package:dashboard/core/repos/artwork_repo/artworks_repo.dart';
import 'package:dashboard/core/services/data_service.dart';
import 'package:dashboard/core/services/storage_service.dart';
import 'package:dashboard/core/utils/backend_endpoint.dart';
import 'package:dashboard/features/add_artwork/data/models/add_artwork_input_model.dart';
import 'package:dashboard/features/add_artwork/presentation/views/domain/entities/add_artwork_input_entity.dart';

class ArtworksRepoImpl implements ArtworksRepo {
  final DatabaseService databaseService;

  ArtworksRepoImpl(this.databaseService);

  @override
  Future<Either<Failure, void>> addArtwork(
      AddArtworkInputEntity addArtworkInputEntity) async {
    try {
      await databaseService.addData(
        path: BackendEndpoint.artworksCollection,
        data: AddArtworkInputModel.fromEntity(addArtworkInputEntity).toJson(),
      );
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure('Failed to add Artwork'));
    }
  }
}
import 'package:dashboard/core/repos/artwork_repo/artworks_repo.dart';
import 'package:dashboard/core/repos/artwork_repo/artworks_repo_impl.dart';
import 'package:dashboard/core/repos/images_repo/images_repo.dart';
import 'package:dashboard/core/repos/images_repo/images_repo_impl.dart';
import 'package:dashboard/core/services/data_service.dart';
import 'package:dashboard/core/services/fire_storage.dart';
import 'package:dashboard/core/services/firestore_service.dart';
import 'package:dashboard/core/services/storage_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetit() {
  getIt.registerSingleton<StorageService>(FireStorage());
  getIt.registerSingleton<DatabaseService>(FireStoreService());

  getIt.registerSingleton<ImagesRepo>(
      ImagesRepoImpl(storageService: getIt.get<StorageService>()));

  getIt.registerSingleton<ArtworksRepo>(
    ArtworksRepoImpl(
      getIt.get<DatabaseService>(),
    ),
  );
}

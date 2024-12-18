import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dashboard/core/errors/failures.dart';
import 'package:dashboard/core/repos/images_repo/images_repo.dart';
import 'package:dashboard/core/services/storage_service.dart';
import 'package:dashboard/core/utils/backend_endpoint.dart';
import 'package:dashboard/main.dart';
import 'package:path/path.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ImagesRepoImpl implements ImagesRepo {
  final StorageService storageService;

  ImagesRepoImpl({required this.storageService});
  @override
  Future<Either<Failure, String>> UploadImage(File image) async {
    try {
      final String url = await supabase.storage.from("images").upload(
            basename(image.path),
            image,
          );
      final String public_url = await supabase.storage
          .from("images")
          .getPublicUrl(basename(image.path));
      // String url =
      //     await storageService.uploadFile(image, BackendEndpoint.images);
      return Right(public_url);
    } catch (e) {
      return Left(ServerFailure('Failed to upload image'));
    }
  }
}

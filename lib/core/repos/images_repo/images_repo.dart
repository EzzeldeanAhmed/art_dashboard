import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dashboard/core/errors/failures.dart';

abstract class ImagesRepo {
  Future<Either<Failure, String>> UploadImage(File image);
}

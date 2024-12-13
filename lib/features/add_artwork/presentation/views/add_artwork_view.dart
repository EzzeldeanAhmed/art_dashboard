import 'package:dashboard/core/repos/artwork_repo/artworks_repo.dart';
import 'package:dashboard/core/repos/images_repo/images_repo.dart';
import 'package:dashboard/core/services/get_it_service.dart';
import 'package:dashboard/features/add_artwork/presentation/views/manger/add_artwork/cubit/add_artwork_cubit.dart';
import 'package:dashboard/features/add_artwork/presentation/views/widgets/add_artwork_view_body.dart';
import 'package:dashboard/features/add_artwork/presentation/views/widgets/add_artwork_view_body_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddArtworkView extends StatelessWidget {
  const AddArtworkView({super.key});

  static const routeName = 'add_artwork';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        title: const Text('ARTSHUB'),
        backgroundColor: Colors.amber[200],
      ),
      body: BlocProvider(
          create: (context) => AddArtworkCubit(
                getIt.get<ImagesRepo>(),
                getIt.get<ArtworksRepo>(),
              ),
          child: const AddArtworkViewBodyBlocBuilder()),
    );
  }
}

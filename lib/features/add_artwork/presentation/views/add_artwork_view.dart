import 'package:dashboard/features/add_artwork/presentation/views/widgets/add_artwork_view_body.dart';
import 'package:flutter/material.dart';

class AddArtworkView extends StatelessWidget {
  const AddArtworkView({super.key});

  static const routeName = 'add_artwork';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Artwork'),
      ),
      body: const AddArtworkViewBody(),
    );
  }
}

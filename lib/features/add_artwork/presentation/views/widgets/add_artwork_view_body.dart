import 'package:dashboard/core/widgets/custom_text_field.dart';
import 'package:dashboard/features/add_artwork/presentation/views/widgets/image_field.dart';
import 'package:flutter/material.dart';

class AddArtworkViewBody extends StatefulWidget {
  const AddArtworkViewBody({super.key});

  @override
  State<AddArtworkViewBody> createState() => _AddArtworkViewBodyState();
}

class _AddArtworkViewBodyState extends State<AddArtworkViewBody> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              CustomTextFormField(
                  hintText: 'Artwork Code', textInputType: TextInputType.text),
              const SizedBox(height: 8),
              CustomTextFormField(
                  hintText: 'Artwork Name', textInputType: TextInputType.text),
              const SizedBox(height: 8),
              CustomTextFormField(
                  hintText: 'Artwork Type', textInputType: TextInputType.text),
              const SizedBox(height: 8),
              CustomTextFormField(
                  hintText: 'Year Made', textInputType: TextInputType.number),
              const SizedBox(height: 8),
              CustomTextFormField(
                  hintText: 'Epoch', textInputType: TextInputType.text),
              const SizedBox(height: 8),
              CustomTextFormField(
                  hintText: 'Dimensions', textInputType: TextInputType.text),
              const SizedBox(height: 8),
              CustomTextFormField(
                  hintText: 'Medium', textInputType: TextInputType.text),
              const SizedBox(height: 8),
              CustomTextFormField(
                  hintText: 'Artist', textInputType: TextInputType.text),
              const SizedBox(height: 8),
              CustomTextFormField(
                  hintText: 'Country ', textInputType: TextInputType.text),
              const SizedBox(height: 8),
              CustomTextFormField(
                hintText: 'Artwork Description',
                textInputType: TextInputType.text,
                maxLines: 5,
              ),
              const SizedBox(height: 12),
              ImageField(
                onFileChanged: (image) {},
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:storeus_task/src/core/utils/extension.dart';

import '../../../common/generic_text_field.dart';
import '../../../common/text_widget.dart';
import '../controller/home_controller.dart';

class PostForm extends StatefulWidget {
  final BoxConstraints constraints;
  final HomeController homeController;
  const PostForm({
    super.key,
    required this.constraints,
    required this.homeController,
  });

  @override
  State<PostForm> createState() => _PostFormState();
}

class _PostFormState extends State<PostForm> {
  @override
  void initState() {
    super.initState();
    widget.homeController.initFieldsControllers();
  }

  @override
  void dispose() {
    widget.homeController.disposeFieldsControllers();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.homeController.formKey,
      child: Column(
        children: [
          (widget.constraints.maxHeight * .08).h,
          GenericTextField(
            controller: widget.homeController.titleNameController,
            hintText: 'Title',
            validator: (p0) {
              if (p0!.isEmpty) {
                return 'Title is required';
              }
              return null;
            },
          ),
          (widget.constraints.maxHeight * .035).h,
          GenericTextField(
            controller: widget.homeController.bodyNameController,
            hintText: 'Body',
            validator: (p0) {
              if (p0!.isEmpty) {
                return 'Body is required';
              }
              return null;
            },
          ),
          (widget.constraints.maxHeight * .05).h,
          ElevatedButton(
            onPressed: () {
              if (widget.homeController.formKey.currentState!.validate()) {
                FocusScope.of(context).unfocus();
                widget.homeController.addPost();
                Navigator.of(context).pop();
              }
            },
            child: TextWidget(text: 'Add post'),
          ),
        ],
      ),
    );
  }
}

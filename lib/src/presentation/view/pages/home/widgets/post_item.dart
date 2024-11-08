import 'package:flutter/material.dart';
import 'package:storeus_task/src/presentation/view/pages/home/controller/home_controller.dart';

import '../../../../../core/utils/enums.dart';
import '../../../../../data/models/post_model.dart';
import '../../../common/text_widget.dart';

class PostItem extends StatelessWidget {
  final PostModel item;
  final int index;
  final HomeController homeController;
  const PostItem({
    super.key,
    required this.item,
    required this.index,
    required this.homeController,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: TextWidget(text: item.title),
      onTap: () {
        Navigator.of(context).pushNamed(
          AppLocalRoute.previewPost.route,
          arguments: item,
        );
      },
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        color: Colors.red,
        onPressed: () {
          homeController.deleteUser(item);
        },
      ),
    );
  }
}

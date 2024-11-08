import 'package:flutter/material.dart';
import 'package:storeus_task/src/core/utils/extension.dart';
import 'package:storeus_task/src/data/models/post_model.dart';
import 'package:storeus_task/src/presentation/view/pages/home/controller/home_controller.dart';
import 'package:storeus_task/src/presentation/view/pages/home/widgets/post_item.dart';
import 'package:storeus_task/src/presentation/view_model/blocs/data_bloc/api_data_state.dart';

import '../../../common/generic_text_field.dart';
import '../../../common/text_widget.dart';

class BodyPage extends StatelessWidget {
  final HomeController homeController;
  final ApiDataState<PostModel> postState;
  const BodyPage({super.key, required this.homeController, required this.postState});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenericTextField(
          hintText: 'Search for any post by title',
          onChange: homeController.search,
        ),
        (context.sizeSide.smallSide * .035).h,
        Expanded(
          child: postState.maybeMap(
            loading: (value) => const Center(child: CircularProgressIndicator()),
            successList: (data) {
              return ValueListenableBuilder(
                valueListenable: homeController.postNotifier,
                builder: (context, posts, _) {
                  if (posts.isNotEmpty) {
                    return ListView.builder(
                      controller: homeController.scrollController,
                      itemCount: homeController.postNotifier.value.length,
                      itemBuilder: (context, index) {
                        final user = homeController.postNotifier.value[index];
                        return PostItem(item: user, index: index, homeController: homeController);
                      },
                    );
                  }
                  return Center(child: TextWidget(text: 'No data found', style: context.headlineS));
                },
              );
            },
            error: (message) =>
                Center(child: TextWidget(text: message.error?.statusMessage ?? '', style: context.headlineS)),
            orElse: () => const SizedBox.shrink(),
          ),
        ),
      ],
    );
  }
}

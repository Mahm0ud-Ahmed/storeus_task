import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storeus_task/src/core/utils/extension.dart';
import 'package:storeus_task/src/core/utils/layout/responsive_layout.dart';
import 'package:storeus_task/src/data/models/post_model.dart';
import 'package:storeus_task/src/presentation/view/common/dialogs.dart';
import 'package:storeus_task/src/presentation/view/pages/home/controller/home_controller.dart';
import 'package:storeus_task/src/presentation/view/pages/home/widgets/post_form.dart';

import '../../../../core/config/l10n/generated/l10n.dart';
import '../../../view_model/blocs/data_bloc/api_data_bloc.dart';
import '../../../view_model/blocs/data_bloc/api_data_state.dart';
import 'widgets/body_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late final HomeController homeController;
  @override
  void initState() {
    super.initState();
    homeController = HomeController()..initController();
  }

  @override
  void dispose() {
    homeController.disposeController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      titleAppBar: S.of(context).app_name,
      builder: (context, info) {
        return RefreshIndicator(
          onRefresh: () async {
            homeController.getData();
          },
          child: BlocListener<ApiDataBloc<PostModel>, ApiDataState<PostModel>>(
            bloc: homeController.postActionBloc,
            listener: homeController.listenOnActions,
            child: BlocConsumer<ApiDataBloc<PostModel>, ApiDataState<PostModel>>(
              bloc: homeController.postsBloc,
              listener: (context, state) {
                state.mapOrNull(
                  successList: (data) {
                    homeController.postNotifier.value = data.data ?? [];
                  },
                );
              },
              builder: (context, state) {
                return BodyPage(homeController: homeController, postState: state);
              },
            ),
          ),
        );
      },
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          customBottomSheet(
            context: context,
            height: context.sizeSide.largeSide * .5,
            builder: (context, constraints) => PostForm(
              constraints: constraints,
              homeController: homeController,
            ),
          );
        },
      ),
    );
  }
}

import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart'
    show BuildContext, Curves, FormState, GlobalKey, Navigator, ScrollController, TextEditingController, ValueNotifier;

import '../../../../../core/utils/api_info.dart';
import '../../../../../core/utils/enums.dart';
import '../../../../../data/models/post_model.dart';
import '../../../../view_model/blocs/data_bloc/api_data_bloc.dart';
import '../../../../view_model/blocs/data_bloc/api_data_state.dart';
import '../../../common/dialogs.dart';

class HomeController {
  late final ApiDataBloc<PostModel> postsBloc;
  late final ApiDataBloc<PostModel> postActionBloc;
  late final GlobalKey<FormState> formKey;
  TextEditingController? titleNameController;
  TextEditingController? bodyNameController;

  late final ScrollController scrollController;
  late final ValueNotifier<List<PostModel>> postNotifier;

  String? eventId;
  String? oldKeyword;
  ApiInfo? _apiInfo;

  void initController() {
    postsBloc = ApiDataBloc<PostModel>();
    postActionBloc = ApiDataBloc<PostModel>();
    formKey = GlobalKey<FormState>();
    scrollController = ScrollController();
    getData();
    postNotifier = ValueNotifier([]);
  }

  void initFieldsControllers() {
    titleNameController = TextEditingController();
    bodyNameController = TextEditingController();
  }

  void disposeFieldsControllers() {
    titleNameController?.dispose();
    bodyNameController?.dispose();
  }

  void getData() {
    // eventId = 'get_posts';
    _apiInfo ??= ApiInfo(endpoint: ApiRoute.posts.route);
    postsBloc.getData(info: _apiInfo!);
  }

  void addPost() {
    eventId = "add_post";
    formKey.currentState!.save();
    final post = PostModel(
      title: titleNameController!.text,
      body: bodyNameController!.text,
      createdAt: DateTime.now(),
    );

    postActionBloc
        .storeData(info: ApiInfo(endpoint: ApiRoute.posts.route, data: post.toJson(), apiMethod: ApiMethod.post))
        .then(
      (value) {
        scrollController.animateTo(scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 500), curve: Curves.ease);
      },
    );
  }

  void deleteUser(PostModel pPost) {
    eventId = 'delete_post';
    postActionBloc.deleteData(info: ApiInfo(endpoint: '${ApiRoute.posts.route}/${pPost.id}', apiMethod: ApiMethod.delete));
  }

  void search(String? keyword) {
    if (oldKeyword != null) {
      EasyDebounce.cancel(oldKeyword ?? '');
      oldKeyword = keyword;
    } else {
      oldKeyword = keyword;
    }
    EasyDebounce.debounce(keyword ?? '', const Duration(seconds: 1), () {
      _apiInfo?.queries = {'title': keyword};
      getData();
    });
  }

  void listenOnActions(BuildContext context, ApiDataState<PostModel> state) {
    state.mapOrNull(
      loading: (
        value,
      ) {
        showLoadingDialog(context);
      },
      successModel: (value) {
        final newData = List.from(postNotifier.value);
        if (eventId == 'add_post') {
          newData.add(value.data!);
        } else {
          newData.remove(value.data!);
        }
        postNotifier.value = List.from(newData);
        eventId = null;
        Navigator.pop(context);
        eventId = null;
        showToast('Success Process');
      },
      error: (value) {
        eventId = null;
        Navigator.pop(context);
        showToast(value.error?.statusMessage ?? '');
      },
    );
  }

  void disposeController() {
    scrollController.dispose();
    postNotifier.dispose();
    postsBloc.close();
  }
}

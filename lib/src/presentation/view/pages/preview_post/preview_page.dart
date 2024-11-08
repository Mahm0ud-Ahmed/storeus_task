import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storeus_task/src/core/utils/extension.dart';
import 'package:storeus_task/src/core/utils/layout/responsive_layout.dart';
import 'package:storeus_task/src/data/models/post_model.dart';
import 'package:storeus_task/src/presentation/view/common/text_widget.dart';

import '../../../../core/config/l10n/generated/l10n.dart';

class PreviewPostPage extends StatefulWidget {
  const PreviewPostPage({super.key});

  @override
  State<PreviewPostPage> createState() => _PreviewPostPageState();
}

class _PreviewPostPageState extends State<PreviewPostPage> with SingleTickerProviderStateMixin {
  PostModel? post;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    post ??= ModalRoute.of(context)!.settings.arguments as PostModel?;
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      titleAppBar: S.of(context).app_name,
      builder: (context, info) {
        if (post != null) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextWidget(text: 'Title: ${post!.title}'),
              (context.sizeSide.smallSide * .035).h,
              TextWidget(text: 'Body: ${post!.body}'),
              (context.sizeSide.smallSide * .035).h,
              DateTimeItem(icon: FontAwesomeIcons.calendarDay, text: post!.createdAt.dateFormatter),
              (context.sizeSide.smallSide * .035).h,
              DateTimeItem(icon: FontAwesomeIcons.clock, text: post!.createdAt.timeFormatter)
            ],
          );
        }
        return Center(
          child: TextWidget(
            text: 'No data found',
            style: context.headlineS,
          ),
        );
      },
    );
  }
}

class DateTimeItem extends StatelessWidget {
  final IconData icon;
  final String text;
  const DateTimeItem({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        (context.sizeSide.smallSide * .02).w,
        TextWidget(text: text),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_alone/cubits/scroll_cubit.dart';
import 'package:news_app_alone/widgets/custom_refresh_indicator.dart';

import 'categories_list.dart';
import 'news_list_view_builder.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    BlocProvider.of<ScrollCubit>(context).initScrollListener();
    super.initState();
  }

  @override
  void dispose() {
    BlocProvider.of<ScrollCubit>(context).close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: buildCustomScrollView(context),
    );
  }


  CustomRefreshIndicator buildCustomScrollView(BuildContext context) {
    return CustomRefreshIndicator(
      categoryType: 'general',
      context: context,
      child: NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          BlocProvider.of<ScrollCubit>(context).notificationListener(notification);
          return true;
        },
        child: CustomScrollView(
          controller: BlocProvider.of<ScrollCubit>(context).scrollController,
          physics: const BouncingScrollPhysics(),
          slivers: const [
            SliverToBoxAdapter(
              child: CategoriesList(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            NewsListViewBuilder(),
          ],
        ),
      ),
    );
  }
}

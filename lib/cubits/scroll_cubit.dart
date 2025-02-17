import 'dart:async';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/rendering.dart';

class ScrollCubit extends Cubit<bool> {
  final ScrollController scrollController = ScrollController();
  Timer? _hideButtonTimer;
  ScrollCubit() : super(false);

  void scrollToTop() {
    scrollController.animateTo(0.0,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  notificationListener(UserScrollNotification notification) {
    if (notification.direction == ScrollDirection.forward && state) {
      _hideButtonTimer?.cancel();
      emit(false);
    } else if (notification.direction == ScrollDirection.reverse && !state) {
      _hideButtonTimer?.cancel();
      emit(true);
    }

    if (notification.direction == ScrollDirection.idle) {
      _hideButtonTimer?.cancel(); // to cancel any old timer
      _hideButtonTimer = Timer(const Duration(seconds: 2), () {
        if (state) emit(false);
      });
    }
  }

  void initScrollListener() {
    scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (scrollController.offset <= 100 && state) {
      emit(false);
    }
  }

  @override
  Future<void> close() {
    scrollController.dispose();
    return super.close();

    //dispose()
    // → بيتم استدعاؤه عشان يحذف scrollController من الذاكرة لما Cubit يتم التخلص منه.
    // دا مهم جدًا لأنه لو نسينا نعمل dispose(), ممكن يحصل Memory Leak ويستهلك التطبيق موارد غير ضرورية.
  }
}

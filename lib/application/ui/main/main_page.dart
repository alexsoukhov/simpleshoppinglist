import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simpleshoppinglist/application/ui/cart/cart_page.dart';

import '../../../repositories/carts_repository.dart';
import '../../bloc/application_error/application_error_bloc.dart';
import '../../bloc/main/main_bloc.dart';
import '../list_carts/carts_list_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(
        context.read<CartsRepository>(),
        ApplicationErrorBloc.of(context),
      ),
      child: BlocPresentationListener<MainBloc, MainEvent>(
        listener: (context, event) {
          switch (event) {
            case MainEventOpenCartPage():
              _pageController.animateToPage(
                1,
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
              );
          }
        },
        child: BlocBuilder<MainBloc, MainState>(
          builder: (context, state) {
            return OrientationBuilder(
              builder: (context, state) {
                //TODO(AS): portrait/landscape
                return Material(
                  child: Scaffold(
                    body: PageView(
                      controller: _pageController,
                      // The children are the individual pages the user can swipe between
                      children: <Widget>[CartsListPage(), CartPage()],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simpleshoppinglist/application/ui/cart/cart_page.dart';

import '../../../repositories/carts_repository.dart';
import '../../bloc/application_error/application_error_bloc.dart';
import '../../bloc/main/main_bloc.dart';
import '../carts_list/carts_list_page.dart';

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
      child: BackButtonListener(
        onBackButtonPressed: () async {
          if (_pageController.page == 1) {
            MainBloc.of(context).add(MainEvent.openCartsListPage());
            return true;
          } else {
            return false;
          }
        },
        child: BlocPresentationListener<MainBloc, MainEvent>(
          listener: (context, event) {
            if (_pageController.positions.isNotEmpty) {
              switch (event) {
                case MainEventOpenCartPage():
                  _pageController.animateToPage(
                    1,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                  );
                  break;
                case MainEventOpenCartsListPage():
                  _pageController.animateToPage(
                    0,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                  );
                  break;
              }
            }
          },
          child: BlocBuilder<MainBloc, MainState>(
            builder: (context, state) {
              return Material(
                child: Scaffold(
                  drawer: Drawer(
                      child: SizedBox()),
                      body: OrientationBuilder(
                    builder: (context, orientation) {
                      return orientation == Orientation.portrait
                          ? PageView(
                              controller: _pageController,
                              children: <Widget>[CartsListPage(), CartPage()],
                            )
                          : SafeArea(
                              left: true,
                              right: true,
                              top: false,
                              bottom: false,
                              child: Row(
                                children: <Widget>[
                                  Expanded(child: CartsListPage()),
                                  Expanded(child: CartPage(allowBack: false)),
                                ],
                              ),
                            );
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

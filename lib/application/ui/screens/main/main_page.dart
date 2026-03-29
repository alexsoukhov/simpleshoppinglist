import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../di/di.dart';
import '../../../../domain/carts_repository.dart';
import '../application_error/bloc/application_error_bloc.dart';
import '../cart/cart_page.dart';
import '../carts_list/carts_list_page.dart';
import 'bloc/main_bloc.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final PageController _pageController = PageController(initialPage: 0);

  bool _canPop = true;

  @override
  void initState() {
    super.initState();

    _pageController.addListener(_pageListener);
  }

  @override
  void dispose() {
    _pageController.removeListener(_pageListener);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          MainBloc(getIt<CartsRepository>(), ApplicationErrorBloc.of(context)),
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
            return PopScope(
              canPop: _canPop,
              onPopInvokedWithResult: (bool didPop, void result) {
                MainBloc.of(context).add(MainEvent.openCartsListPage());
              },
              child: Material(
                child: Scaffold(
                  body: OrientationBuilder(
                    builder: (context, orientation) {
                      Orientation orient = orientation;

                      if (orient == Orientation.landscape) {
                        // Check if really landscape, not flipped with keyb opened
                        if (MediaQuery.of(context).size.width <
                            MediaQuery.of(context).size.height) {
                          orient = Orientation.portrait;
                        }
                      }

                      return orient == Orientation.portrait
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
              ),
            );
          },
        ),
      ),
    );
  }

  void _pageListener() {
    setState(() {
      _canPop = _pageController.positions.isEmpty || _pageController.page != 1;
    });
  }
}

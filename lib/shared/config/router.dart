import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:taskordersrate/features/order/model/order_model.dart';
import 'package:taskordersrate/features/order/screen/order_details_screen.dart';

import '../../features/BottomNavigationBar/bottom_navBar_screen.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  initialLocation: UserBottomNavBarScreen.path,
  navigatorKey: rootNavigatorKey,
  routes: [
    GoRoute(
      path: UserBottomNavBarScreen.path,
      name: UserBottomNavBarScreen.name,
      builder: (context, state) => UserBottomNavBarScreen(),
    ),
    GoRoute(
      path: CompletedOrderDetailsScreen.path,
      name: CompletedOrderDetailsScreen.name,
      builder: (context, state) =>
          CompletedOrderDetailsScreen(orderModel: state.extra as OrderModel),
    ),
  ],
);

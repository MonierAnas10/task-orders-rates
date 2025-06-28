import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskordersrate/features/order/screen/order_screen.dart';
import 'package:taskordersrate/shared/resources.dart';

class UserBottomNavBarScreen extends StatefulWidget {
  static String get name => "/UserBottomNavBarScreen";

  static String get path => "/";
  const UserBottomNavBarScreen({Key? key}) : super(key: key);

  @override
  State<UserBottomNavBarScreen> createState() => _UserBottomNavBarScreenState();
}

class _UserBottomNavBarScreenState extends State<UserBottomNavBarScreen> {
  int _page = 2;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CurvedNavigationBar(
              index: 2,
              height: 45,
              backgroundColor: Colors.transparent,
              buttonBackgroundColor: Color(0xffFF530D),
              key: _bottomNavigationKey,
              items: <Widget>[
                SvgPicture.asset(
                  Resources.noteSvg,
                  width: 25.h,
                  height: 25.h,
                  color: _page == 0 ? Colors.white : Color(0xffFF530D),
                ),
                SvgPicture.asset(
                  Resources.orders,
                  width: 25.h,
                  height: 25.h,
                  color: _page == 1 ? Colors.white : Color(0xffFF530D),
                ),
                SvgPicture.asset(
                  Resources.homeSvg,
                  width: 25.h,
                  height: 25.h,
                  color: _page == 2 ? Colors.white : Color(0xffFF530D),
                ),
                SvgPicture.asset(
                  Resources.pointsSvg,
                  width: 25.h,
                  height: 25.h,
                  color: _page == 3 ? Colors.white : Color(0xffFF530D),
                ),
                SvgPicture.asset(
                  Resources.settingsSvg,
                  width: 25.h,
                  height: 25.h,
                  color: _page == 4 ? Colors.white : Color(0xffFF530D),
                ),
              ],
              onTap: (index) {
                setState(() {
                  _page = index;
                });
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Color(0xffffffff),
                child: Padding(
                  padding: REdgeInsets.symmetric(vertical: 1.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            "note",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: _page == 0
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              color: _page == 0
                                  ? Color(0xffFF530D)
                                  : Color(0xFFA4A4A4),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "orders",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: _page == 1
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              color: _page == 1
                                  ? Color(0xffFF530D)
                                  : Color(0xFFA4A4A4),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "home",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: _page == 2
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              color: _page == 2
                                  ? Color(0xffFF530D)
                                  : Color(0xFFA4A4A4),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "points",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: _page == 3
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              color: _page == 3
                                  ? Color(0xffFF530D)
                                  : Color(0xFFA4A4A4),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "settings",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: _page == 4
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              color: _page == 4
                                  ? Color(0xffFF530D)
                                  : Color(0xFFA4A4A4),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            20.verticalSpace,
          ],
        ),
        body: getScreenBody(_page),
      ),
    );
  }

  getScreenBody(int currentindex) {
    switch (currentindex) {
      case 0:
        return Container(color: Colors.blueGrey);
      case 1:
        return OrderScreen(navBarContext: context);
      case 2:
        return Container(color: Colors.white);
      case 3:
        return Container(color: Colors.blueGrey);
      case 4:
        return Container(color: Colors.blueGrey);
    }
  }
}

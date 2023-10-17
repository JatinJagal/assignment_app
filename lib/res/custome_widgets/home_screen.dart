import 'package:assignment_app/res/constants/consts.dart';
import 'package:assignment_app/screens/navbar_screens/dashboard_screen.dart';
import 'package:assignment_app/screens/navbar_screens/first_screen.dart';
import 'package:assignment_app/screens/navbar_screens/setting_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int pageIndex = 0;

  final List<Widget> _navBody = [
    FirstScreen(),
    DashBoardScreen(),
    SettingScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          _navBody.elementAt(pageIndex),
          Padding(
            padding: const EdgeInsets.only(left: 52,right: 52,bottom: 24),
            child: Align(
              alignment: Alignment(0.0, 1.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(12),
                ),
                child: BottomNavigationBar(
                    items: navItems,
                    currentIndex: pageIndex,
                    selectedItemColor: whiteColor,
                  unselectedItemColor: whiteColor,
                  showSelectedLabels: true,
                  showUnselectedLabels: true,
                  backgroundColor: navyBlue,
                  onTap: (int index){
                      setState(() {
                        pageIndex = index;
                      });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

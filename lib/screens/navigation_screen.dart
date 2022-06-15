import '../utils/export.dart';

class NavigationScreen extends StatefulWidget {
  final index;

  NavigationScreen({required this.index});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {

  final listRoutes = [HomeScreen(),EnterpriseScreen(),DeliveryScreen(),FeesScreen(),FinancesScreen(),QuestionsScreen()];
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    currentIndex = widget.index;

    print(currentIndex);

    return Scaffold(
      backgroundColor: PaletteColor.primaryColor,
      body: Flex(
        direction: Axis.horizontal,
        children: [
          Menu(index: currentIndex),
          Flexible(
              flex: 6,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topLeft: Radius.circular(20)),
                    border: Border.all(color: PaletteColor.white ),
                  color: PaletteColor.white
                ),
                child: listRoutes[currentIndex]
              )
          )
        ],
      ),
    );
  }
}

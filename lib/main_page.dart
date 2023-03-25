import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../screens/screens.dart';
import 'pages/pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // Indice de la page sélectionnée
  int _selectedPageIndex = 0;

  // Pages à afficher dans l'IndexedStack
  final List<Widget> _pages = [
    FirstPage(),
    SecondPage(),
    ProfilePage(),
    AboutPage(),
  ];

  // Déclenche la navigation vers une nouvelle page
  void _onDestinationSelected(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  // Construit le corps de la page
  Widget _buildBody() {
    return Row(
      children: <Widget>[
        NavigationRail(
          groupAlignment: 0,
          minWidth: 20,
          selectedIndex: _selectedPageIndex,
          onDestinationSelected: _onDestinationSelected,
          labelType: NavigationRailLabelType.selected,
          leading: Column(
            children: [
              // const SizedBox(height: 8),
              SvgPicture.asset(
                'assets/icons/Idea-Icon.svg',
                width: 48,
                height: 48,
              ),
            ],
          ),
          destinations: const [
            NavigationRailDestination(
              icon: Icon(Icons.api),
              label: SizedBox.shrink(),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.sync),
              label: SizedBox.shrink(),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.person),
              label: SizedBox.shrink(),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.question_mark_outlined),
              label: SizedBox.shrink(),
            ),
          ],
          elevation: 4,
        ),
        const VerticalDivider(thickness: 1, width: 1),
        Expanded(
          child: IndexedStack(
            index: _selectedPageIndex,
            children: _pages,
          ),
        ),
      ],
    );
  }
}

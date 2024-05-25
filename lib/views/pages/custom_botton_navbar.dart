import'package:flutter/material.dart';
import 'package:food_delivery_app1/utils/app_colors.dart';
import 'package:food_delivery_app1/views/pages/favorites_page.dart';
import 'package:food_delivery_app1/views/pages/home_page.dart';
import 'package:food_delivery_app1/views/pages/profile_page.dart';
class CustomBottomNavbar extends StatefulWidget {
  const CustomBottomNavbar({super.key});

  
  @override
  State<CustomBottomNavbar> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CustomBottomNavbar> {
   int currentPageIndex=0;
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          actions: [
            IconButton(onPressed: (){}, icon:const Icon(Icons.notifications))
          ],
          centerTitle: true,
          title: Column(
            children: [
              Text('Current Location',
              style:Theme.of(context).textTheme.titleSmall!.copyWith(
                color: AppColors.grey,
              ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [const Icon(Icons.location_on,
                color: AppColors.green,
                ),
                const SizedBox(width: 4,),
                Text(
                'Jinen,Palestine',
                style: Theme.of(context).textTheme.bodyLarge,
                ),
                ],
              )
            ],
          ),
          ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.favorite),
            icon:Icon(Icons.favorite_border),
            label: 'Favorites',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon:Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
      ),
      body:const <Widget>[
        HomePage(),
        FavoritesPage(),
        ProfilePage(),
       
      ][currentPageIndex],
      );
  }
}

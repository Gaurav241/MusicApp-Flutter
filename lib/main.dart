import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/screens/home_screen.dart';
import 'package:music/screens/now_playing_screen.dart';
import 'package:music/screens/podcast_screen.dart';
import 'package:music/screens/personal_settings_screen.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
      GetMaterialApp(
        home: const HomeScreen(),
        debugShowCheckedModeBanner: false,
        getPages: [
          GetPage(name: '/', page: () => const HomeScreen()),
          GetPage(name: '/now_playing', page: () => const NowPLayingScreen()),
          // GetPage(name: '/search', page: () => SearchScreen(onTap: (){},)),
          GetPage(name: '/personal_settings', page: () => const PersonalSettingsScreen()),
          GetPage(name: '/podcast', page: () => const PodcastScreen()),
        ],
      )
  );
}

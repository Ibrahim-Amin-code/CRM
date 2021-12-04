import 'package:crm_software/network/local/cache_helper.dart';

import 'package:crm_software/screens/layout/cubit/cubit.dart';
import 'package:crm_software/screens/layout/cubit/states.dart';
import 'package:crm_software/screens/splash/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app_mode/app_modes.dart';
import 'network/bloc_observer.dart';
import 'network/remote/dio_helper.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.inti();
  await CacheHelper.inti();
  var isDark = CacheHelper.getBoolean(key: 'isDark');
  runApp(MyApp(isDark));
}

class MyApp extends StatelessWidget {
  var isDark;
  MyApp(this.isDark);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit()..changeAppMode(fromShard: isDark,),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
              theme: lightMode(),
              themeMode: AppCubit.get(context).isDark
                  ? ThemeMode.dark
                  : ThemeMode.light,
              darkTheme: darkMode(),
              debugShowCheckedModeBanner: false,
              home: SafeArea(
                child: Splash(),
              ));
        },
      ),
    );
  }
}

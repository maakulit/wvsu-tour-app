import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wvsu_tour_app/bloc/announcements/announcements_bloc.dart';
import 'package:wvsu_tour_app/config/app.dart';
import 'package:wvsu_tour_app/firebase/auth.dart';
import 'package:wvsu_tour_app/observers/default_block_observer.dart';
import 'package:wvsu_tour_app/repositories/announcements/announcements_api.dart';
import 'package:wvsu_tour_app/repositories/announcements/announcements_repository.dart';
import 'package:wvsu_tour_app/screens/auth_screen.dart';
import 'package:wvsu_tour_app/screens/home_screen.dart';
import 'package:wvsu_tour_app/screens/legal_screen.dart';
import 'package:http/http.dart' as http;
import 'package:wvsu_tour_app/screens/root_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = DefaultBlocObserver();
  await Firebase.initializeApp();

  final AnnouncementsRepository announcementsRepository =
      AnnouncementsRepository(
    apiClient: AnnouncementsApiClient(
      httpClient: http.Client(),
    ),
  );

  runApp(MyApp(announcementsRepository: announcementsRepository));
}

class MyApp extends StatelessWidget {
  MyApp({Key key, @required this.announcementsRepository})
      : assert(announcementsRepository != null),
        super(key: key);
  final AnnouncementsRepository announcementsRepository;
  @override
  Widget build(BuildContext context) {
    Auth appAuth = new Auth();
    return MaterialApp(
        home: new RootScreen(auth: appAuth),
        theme: ThemeData(
          primaryColor: appPrimaryColor,
          scaffoldBackgroundColor: appScaffoldBackgroundColor,
          textTheme:
              Theme.of(context).textTheme.apply(bodyColor: appTextBodyColor),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: <String, WidgetBuilder>{
          '/login': (BuildContext context) => new AuthScreen(auth: appAuth),
          '/home': (BuildContext context) => BlocProvider(
              create: (context) => AnnouncementsBloc(
                    announcementsRepository: announcementsRepository,
                  )),
          '/legal': (BuildContext context) => new LegalScreen(),
        });
  }
}

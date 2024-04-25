import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pulsz_app/pulsz_app.dart';
import 'package:pulsz_app/screens/statistics/bloc/statistics_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<StatisticsBloc>(create: (context) => StatisticsBloc()),
      ],
      child: PulszApp(),
    ),
  );
}

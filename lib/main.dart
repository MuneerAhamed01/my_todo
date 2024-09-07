import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_todo/firebase_options.dart';
import 'package:my_todo/repositories/auth_repository.dart';
import 'package:my_todo/utils/colors.dart';
import 'package:my_todo/utils/fonts.dart';
import 'package:my_todo/utils/snackbar.dart';
import 'package:my_todo/views/auth/bloc/auth_bloc.dart';
import 'package:my_todo/views/auth/views/auth_screen.dart';
import 'package:my_todo/views/widgets/custom_tab/cubit/tab_handler_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'My TODO',
      theme: ThemeData(
        colorScheme: MyColorScheme.dark(),
        useMaterial3: true,
        textTheme: ThemeData.dark().textTheme.nunito,
      ),
      builder: (context, child) {
        return RepositoryProvider<AuthRepository>(
          create: (context) => AuthRepository(),
          child: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => AuthBloc(context.read<AuthRepository>()),
              ),
              BlocProvider(
                create: (context) => TabHandlerCubit(),
              )
            ],
            child: child!,
          ),
        );
      },
      home: const AuthScreen(),
    );
  }
}

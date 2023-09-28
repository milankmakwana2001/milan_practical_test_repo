import 'package:cloudrevels_practical_test_milan/application/details_screen/detail_data/detail_data_bloc.dart';
import 'package:cloudrevels_practical_test_milan/application/home_screen/home_data/home_data_bloc.dart';
import 'package:cloudrevels_practical_test_milan/infrastructure/details_screen/details_repo_impl.dart';
import 'package:cloudrevels_practical_test_milan/infrastructure/home_screen/home_repo_implr.dart';
import 'package:cloudrevels_practical_test_milan/presentation/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeDataBloc(
            HomeRepoImpl(),
          ),
        ),
        BlocProvider(
          create: (context) => DetailDataBloc(
            DetailRepoImpl(),
          ),
        ),
      ],
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}

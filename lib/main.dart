import 'package:fake_store/features/home/data/repos/home_repo_impl.dart';
import 'package:fake_store/features/home/presentation/view/home_view.dart';
import 'package:fake_store/features/home/presentation/view_model/product_cubit/product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(HomeRepoImpl())..fetchProducts(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}



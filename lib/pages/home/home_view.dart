import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polus_hack/pages/home/bloc/home_cubit.dart';
import 'package:polus_hack/pages/main/bloc/main_bloc.dart';
import 'package:polus_hack/pages/main/main_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<Widget> pages = [
      BlocProvider(
          create: (context){return MainBloc()..add(LoadEvent());},
          child: const MainPage(),
      ),
      const Center(
        child: Text('в разработке'),
      ),
      const Center(
        child: Text('в разработке'),
      ),
    ];

    return Scaffold(
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (BuildContext ctx, HomeState state){
          return pages[state.pageIndex];
        },
      ),

      bottomNavigationBar: BlocBuilder<HomeCubit, HomeState>(
        builder: (BuildContext ctx, HomeState state){
          return BottomNavigationBar(
            currentIndex: state.pageIndex,
            onTap: (newPageIndex) => ctx.read<HomeCubit>().setPageIndex(newPageIndex),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.chat), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
            ],
          );
        },
      )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polus_hack/pages/main/bloc/main_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
        builder: (BuildContext context, MainState state){
          return DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  title: const Text('Запросы'),
                  bottom: const TabBar(
                    tabs: [
                      Tab(text: 'на сегодня',),
                      Tab(text: 'на другую дату',)
                    ],
                  ),
                ),
                body: TabBarView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    _buildRequests(),
                    _otherDate()
                  ],
                ),
              )
          );
        }
    );
  }

  Widget _buildRequests(){
    return Container();
  }

  Widget _otherDate(){
    return Container();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polus_hack/components/request_tile.dart';
import 'package:polus_hack/models/driver_request.dart';
import 'package:polus_hack/pages/main/bloc/main_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Запросы'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'на сегодня',
                ),
                Tab(
                  text: 'на другую дату',
                )
              ],
            ),
          ),
          body: TabBarView(
            physics: const BouncingScrollPhysics(),
            children: [_buildRequests(), _otherDate()],
          ),
        ));
  }

  Widget _buildRequests() {
    return BlocBuilder<MainBloc, MainState>(builder: (BuildContext context, MainState state) {
      if (state is LoadingState) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else {
        return ListView.separated(
            itemBuilder: (ctx, index) => RequestTile(DriverRequest(0, '', DateTime.now(), DateTime.now(), '')),
            separatorBuilder: (ctx, index) => SizedBox(
                  height: 15,
                ),
            itemCount: 30);
      }
    });
  }

  Widget _otherDate() {
    return BlocBuilder<MainBloc, MainState>(builder: (BuildContext context, MainState state) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    });
  }
}

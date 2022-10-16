import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polus_hack/models/driver_request.dart';
import 'package:polus_hack/pages/home/bloc/home_cubit.dart';

class RequestPage extends StatelessWidget {
  const RequestPage(this.driverRequest, {Key? key}) : super(key: key);

  final DriverRequest driverRequest;

  //TODO когда будет время добавить блок с статусом заявок и кайфами

  @override
  Widget build(BuildContext context) {
    Widget divider = const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Divider(),
    );

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Заявка'),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  //border: Border.all(color: Colors.black),
                  gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Colors.yellow.shade900, const Color(0x00000000)]),
                ),
                child: Center(
                  child: Text(
                    '${driverRequest.startTime.hour}.${driverRequest.startTime.minute} - ${driverRequest.endTime.hour}.${driverRequest.endTime.minute}',
                    style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              divider,
              SizedBox(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.map)),
                    IconButton(onPressed: () {
                        Navigator.pop(context);
                        context.read<HomeCubit>().setPageIndex(1);
                    }, icon: const Icon(Icons.chat)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.add_alert)),
                  ],
                ),
              ),
              divider,
              const SizedBox(
                height: 10,
              ),
              const Text(
                'статус',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Не принят в работу',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20,),
              Container(
                  width: 190,
                  decoration: BoxDecoration(color: Colors.yellow, borderRadius: BorderRadius.circular(8)),
                  child: TextButton(
                    onPressed: (){},//TODO: сделать чтоб менялись состояния,
                    child: const Text(
                      'принять в работу',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              divider,
              const SizedBox(
                height: 10,
              ),
              const Text(
                'назначил',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Прорабов Прораб Прорабович',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              divider,
              const SizedBox(
                height: 10,
              ),
              const Text(
                'комментарий',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
              Text(
                driverRequest.comment,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ));
  }

  _getStatusText() {}
}

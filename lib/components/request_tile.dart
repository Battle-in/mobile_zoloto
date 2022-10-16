import 'package:flutter/material.dart';
import 'package:polus_hack/models/driver_request.dart';

class RequestTile extends StatelessWidget {
  const RequestTile(this.driverRequest, {Key? key}) : super(key: key);

  final DriverRequest driverRequest;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 344,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        //border: Border.all(color: Colors.black),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.yellow.shade300,
            Colors.yellowAccent.shade100
          ]
        ),
      ),
      child: Center(
        child: Text('${driverRequest.startTime.hour}.${driverRequest.startTime.minute} - ${driverRequest.endTime.hour}.${driverRequest.endTime.minute}', style: const TextStyle(fontSize: 36, color: Colors.black, fontWeight: FontWeight.bold),),
      ),
    );
  }
}

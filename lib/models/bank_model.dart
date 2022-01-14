import 'package:rest_api/models/payload_model.dart';

class BankConnectedModel {
  List<Payload>? payload;

  BankConnectedModel({this.payload});

  BankConnectedModel.fromJson(Map<String, dynamic> json) {
    if (json['payload'] != null) {
      payload = <Payload>[];
      json['payload'].forEach((v) {
        payload!.add(Payload.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    if (payload != null) {
      data['payload'] = payload!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

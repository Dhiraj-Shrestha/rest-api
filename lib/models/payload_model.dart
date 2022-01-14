import 'package:rest_api/models/accout_model.dart';

class Payload {
  int? id;
  String? fullName;
  String? status;
  String? provider;
  String? lastErrored;
  String? createdAt;
  String? updatedAt;
  List<Accounts>? accounts;

  Payload(
      {this.id,
      this.fullName,
      this.status,
      this.provider,
      this.lastErrored,
      this.createdAt,
      this.updatedAt,
      this.accounts});

  Payload.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['full_name'];
    status = json['status'];
    provider = json['provider'];
    lastErrored = json['last_errored'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['accounts'] != null) {
      accounts = <Accounts>[];
      json['accounts'].forEach((v) {
        accounts!.add(Accounts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['full_name'] = fullName;
    data['status'] = status;
    data['provider'] = provider;
    data['last_errored'] = lastErrored;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (accounts != null) {
      data['accounts'] = accounts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

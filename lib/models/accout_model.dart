class Accounts {
  String? id;
  String? balance;
  String? accountName;
  String? iban;
  String? accountId;
  String? accountType;
  String? currency;
  String? bicSwift;
  String? product;
  int? isPrincipal;
  int? bankConnectId;

  Accounts(
      {this.id,
      this.balance,
      this.accountName,
      this.iban,
      this.accountId,
      this.accountType,
      this.currency,
      this.bicSwift,
      this.product,
      this.isPrincipal,
      this.bankConnectId});

  Accounts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    balance = json['balance'];
    accountName = json['account_name'];
    iban = json['iban'];
    accountId = json['account_id'];
    accountType = json['account_type'];
    currency = json['currency'];
    bicSwift = json['bic_swift'];
    product = json['product'];
    isPrincipal = json['is_principal'];
    bankConnectId = json['bank_connect_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['balance'] = balance;
    data['account_name'] = accountName;
    data['iban'] = iban;
    data['account_id'] = accountId;
    data['account_type'] = accountType;
    data['currency'] = currency;
    data['bic_swift'] = bicSwift;
    data['product'] = product;
    data['is_principal'] = isPrincipal;
    data['bank_connect_id'] = bankConnectId;
    return data;
  }
}

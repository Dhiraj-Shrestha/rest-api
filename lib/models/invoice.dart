class InvoiceModel {
  String? status;
  String? message;
  Payload? payload;

  InvoiceModel({this.status, this.message, this.payload});

  InvoiceModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    payload =
        json['payload'] != null ? Payload.fromJson(json['payload']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (payload != null) {
      data['payload'] = payload!.toJson();
    }
    return data;
  }
}

class Payload {
  int? currentPage;
  List<Data>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Links>? links;
  String? nextPageUrl;
  String? path;
  int? perPage;
  String? prevPageUrl;
  int? to;
  int? total;

  Payload(
      {this.currentPage,
      this.data,
      this.firstPageUrl,
      this.from,
      this.lastPage,
      this.lastPageUrl,
      this.links,
      this.nextPageUrl,
      this.path,
      this.perPage,
      this.prevPageUrl,
      this.to,
      this.total});

  Payload.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    if (json['links'] != null) {
      links = <Links>[];
      json['links'].forEach((v) {
        links!.add(Links.fromJson(v));
      });
    }
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['current_page'] = currentPage;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['first_page_url'] = firstPageUrl;
    data['from'] = from;
    data['last_page'] = lastPage;
    data['last_page_url'] = lastPageUrl;
    if (links != null) {
      data['links'] = links!.map((v) => v.toJson()).toList();
    }
    data['next_page_url'] = nextPageUrl;
    data['path'] = path;
    data['per_page'] = perPage;
    data['prev_page_url'] = prevPageUrl;
    data['to'] = to;
    data['total'] = total;
    return data;
  }
}

class Data {
  String? invoiceNumber;
  String? quoteStatus;
  String? debtStatus;
  int? isPaid;
  String? invoiceType;
  String? discountingDueDate;
  double? discountingRate;
  double? penaltyRate;
  String? penaltyDueDate;
  String? emailAlert;
  int? companyCustomerId;
  int? isValid;
  String? invoiceIssueDate;
  int? companyId;
  String? invoiceTotalAmountVatExcluded;
  String? dueDetail;
  String? invoiceTotalAmountVatIncluded;
  String? invoiceKey;
  String? key;
  String? requestFinanceStatus;
  int? invoiceId;
  String? invoiceDueDate;
  String? invoicePaymentDate;
  int? customerId;
  int? mailSent;
  int? currencyId;
  double? invoiceActualAmountVatIncluded;
  String? status;
  int? delay;
  String? currencyCode;
  String? currencySymbol;

  String? invoiceUrl;
  List<void>? creditNotes;
  CustomerScore? customerScore;
  List<void>? cashManagement;
  CompaniesCustomer? companiesCustomer;
  Customer? customer;

  Data(
      {this.invoiceNumber,
      this.quoteStatus,
      this.debtStatus,
      this.isPaid,
      this.invoiceType,
      this.discountingDueDate,
      this.discountingRate,
      this.penaltyRate,
      this.penaltyDueDate,
      this.emailAlert,
      this.companyCustomerId,
      this.isValid,
      this.invoiceIssueDate,
      this.companyId,
      this.invoiceTotalAmountVatExcluded,
      this.dueDetail,
      this.invoiceTotalAmountVatIncluded,
      this.invoiceKey,
      this.key,
      this.requestFinanceStatus,
      this.invoiceId,
      this.invoiceDueDate,
      this.invoicePaymentDate,
      this.customerId,
      this.mailSent,
      this.currencyId,
      this.invoiceActualAmountVatIncluded,
      this.status,
      this.delay,
      this.currencyCode,
      this.currencySymbol,
      this.invoiceUrl,
      this.customerScore,
      this.companiesCustomer,
      this.customer});

  Data.fromJson(Map<String, dynamic> json) {
    invoiceNumber = json['invoice_number'];
    quoteStatus = json['quote_status'];
    debtStatus = json['debt_status'];
    isPaid = json['is_paid'];
    invoiceType = json['invoice_type'];
    discountingDueDate = json['discounting_due_date'];

    penaltyRate = json['penalty_rate'];
    penaltyDueDate = json['penalty_due_date'];
    emailAlert = json['email_alert'];
    companyCustomerId = json['company_customer_id'];
    isValid = json['is_valid'];
    invoiceIssueDate = json['invoice_issue_date'];
    companyId = json['company_id'];
    invoiceTotalAmountVatExcluded = json['invoice_total_amount_vat_excluded'];
    dueDetail = json['due_detail'];
    invoiceTotalAmountVatIncluded = json['invoice_total_amount_vat_included'];
    invoiceKey = json['invoice_key'];
    key = json['key'];
    requestFinanceStatus = json['request_finance_status'];
    invoiceId = json['invoice_id'];
    invoiceDueDate = json['invoice_due_date'];
    invoicePaymentDate = json['invoice_payment_date'];
    customerId = json['customer_id'];
    mailSent = json['mail_sent'];
    currencyId = json['currency_id'];

    status = json['status'];
    delay = json['delay'];
    currencyCode = json['currency_code'];
    currencySymbol = json['currency_symbol'];

    invoiceUrl = json['invoiceUrl'];

    customerScore = json['customer_score'] != null
        ? CustomerScore.fromJson(json['customer_score'])
        : null;

    companiesCustomer = json['companies_customer'] != null
        ? CompaniesCustomer.fromJson(json['companies_customer'])
        : null;
    customer =
        json['customer'] != null ? Customer.fromJson(json['customer']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['invoice_number'] = invoiceNumber;
    data['quote_status'] = quoteStatus;
    data['debt_status'] = debtStatus;
    data['is_paid'] = isPaid;
    data['invoice_type'] = invoiceType;
    data['discounting_due_date'] = discountingDueDate;
    data['discounting_rate'] = discountingRate;
    data['penalty_rate'] = penaltyRate;
    data['penalty_due_date'] = penaltyDueDate;
    data['email_alert'] = emailAlert;
    data['company_customer_id'] = companyCustomerId;
    data['is_valid'] = isValid;
    data['invoice_issue_date'] = invoiceIssueDate;
    data['company_id'] = companyId;
    data['invoice_total_amount_vat_excluded'] = invoiceTotalAmountVatExcluded;
    data['due_detail'] = dueDetail;
    data['invoice_total_amount_vat_included'] = invoiceTotalAmountVatIncluded;
    data['invoice_key'] = invoiceKey;
    data['key'] = key;
    data['request_finance_status'] = requestFinanceStatus;
    data['invoice_id'] = invoiceId;
    data['invoice_due_date'] = invoiceDueDate;
    data['invoice_payment_date'] = invoicePaymentDate;
    data['customer_id'] = customerId;
    data['mail_sent'] = mailSent;
    data['currency_id'] = currencyId;
    data['invoice_actual_amount_vat_included'] = invoiceActualAmountVatIncluded;
    data['status'] = status;
    data['delay'] = delay;
    data['currency_code'] = currencyCode;
    data['currency_symbol'] = currencySymbol;
    data['invoiceUrl'] = invoiceUrl;

    if (customerScore != null) {
      data['customer_score'] = customerScore!.toJson();
    }

    if (companiesCustomer != null) {
      data['companies_customer'] = companiesCustomer!.toJson();
    }
    if (customer != null) {
      data['customer'] = customer!.toJson();
    }
    return data;
  }
}

class CustomerScore {
  int? customerScoreId;
  int? customerId;

  int? outstanding;
  String? riskLevel;
  String? riskLevelCode;
  String? defaultProbability;
  String? scorePercent;
  String? scoreSectorPercent;
  String? scoreSectorScoreTwenty;
  String? scoreTwenty;
  String? billType;
  String? lastUpdate;
  String? createdAt;
  String? updatedAt;

  String? scoreCode;

  CustomerScore(
      {this.customerScoreId,
      this.customerId,
      this.outstanding,
      this.riskLevel,
      this.riskLevelCode,
      this.defaultProbability,
      this.scorePercent,
      this.scoreSectorPercent,
      this.scoreSectorScoreTwenty,
      this.scoreTwenty,
      this.billType,
      this.lastUpdate,
      this.createdAt,
      this.updatedAt,
      this.scoreCode});

  CustomerScore.fromJson(Map<String, dynamic> json) {
    customerScoreId = json['customer_score_id'];
    customerId = json['customer_id'];

    outstanding = json['outstanding'];
    riskLevel = json['risk_level'];
    riskLevelCode = json['risk_level_code'];
    defaultProbability = json['default_probability'];
    scorePercent = json['score_percent'];
    scoreSectorPercent = json['score_sector_percent'];
    scoreSectorScoreTwenty = json['score_sector_score_twenty'];
    scoreTwenty = json['score_twenty'];
    billType = json['bill_type'];
    lastUpdate = json['last_update'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];

    scoreCode = json['scoreCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['customer_score_id'] = customerScoreId;
    data['customer_id'] = customerId;

    data['outstanding'] = outstanding;
    data['risk_level'] = riskLevel;
    data['risk_level_code'] = riskLevelCode;
    data['default_probability'] = defaultProbability;
    data['score_percent'] = scorePercent;
    data['score_sector_percent'] = scoreSectorPercent;
    data['score_sector_score_twenty'] = scoreSectorScoreTwenty;
    data['score_twenty'] = scoreTwenty;
    data['bill_type'] = billType;
    data['last_update'] = lastUpdate;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;

    data['scoreCode'] = scoreCode;
    return data;
  }
}

class CompaniesCustomer {
  int? companyCustomerId;
  int? customerId;
  String? email;

  CompaniesCustomer({this.companyCustomerId, this.customerId, this.email});

  CompaniesCustomer.fromJson(Map<String, dynamic> json) {
    companyCustomerId = json['company_customer_id'];
    customerId = json['customer_id'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['company_customer_id'] = companyCustomerId;
    data['customer_id'] = customerId;
    data['email'] = email;
    return data;
  }
}

class Customer {
  int? customerId;
  String? companyName;
  String? city;
  String? country;
  String? siret;
  String? siren;
  String? postalCode;
  String? l4Normalized;
  String? naf;
  String? countryCode;

  Customer(
      {this.customerId,
      this.companyName,
      this.city,
      this.country,
      this.siret,
      this.siren,
      this.postalCode,
      this.l4Normalized,
      this.naf,
      this.countryCode});

  Customer.fromJson(Map<String, dynamic> json) {
    customerId = json['customer_id'];
    companyName = json['company_name'];
    city = json['city'];
    country = json['country'];
    siret = json['siret'];
    siren = json['siren'];
    postalCode = json['postal_code'];
    l4Normalized = json['l4_normalized'];
    naf = json['naf'];
    countryCode = json['country_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['customer_id'] = customerId;
    data['company_name'] = companyName;
    data['city'] = city;
    data['country'] = country;
    data['siret'] = siret;
    data['siren'] = siren;
    data['postal_code'] = postalCode;
    data['l4_normalized'] = l4Normalized;
    data['naf'] = naf;
    data['country_code'] = countryCode;
    return data;
  }
}

class Links {
  String? url;
  String? label;
  bool? active;

  Links({this.url, this.label, this.active});

  Links.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    label = json['label'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['label'] = label;
    data['active'] = active;
    return data;
  }
}

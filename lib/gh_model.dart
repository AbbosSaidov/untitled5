import 'dart:convert';


class AddToCardRequest{
  AddToCardRequest({
     this.id,
     this.quantity,
     this.address_id,
  });

  String? id;
  num? quantity;
  List? address_id;

  factory AddToCardRequest.fromJson(String str) =>
      AddToCardRequest.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AddToCardRequest.fromMap(Map<String, dynamic> json) => AddToCardRequest(
    id: json["id"] is String?json["id"] :"",
    quantity: json["quantity"] is num?json["quantity"] :0,
    address_id: json["address_id"] is List?json["address_id"] :[],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "quantity": quantity,
    "address_id": address_id,
      };
}

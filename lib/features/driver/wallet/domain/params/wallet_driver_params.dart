class WalletDriverParams{
  final String id;

  WalletDriverParams({required this.id});


Map<String,dynamic> toJson()=>{
  "id":id,
};
}
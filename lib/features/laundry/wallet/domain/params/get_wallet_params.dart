class GetWalletLaundryParams{
  final String id;

  GetWalletLaundryParams({required this.id});


Map<String,dynamic> toJson()=>{
  "id":id,
};
}
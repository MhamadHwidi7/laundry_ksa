import 'package:flutter/cupertino.dart';
import 'package:laundry_app/core/extensions/screen_size_extension.dart';

class OrderCardListView<T> extends StatelessWidget {
  final List<T> items;
  const OrderCardListView({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.screenWidth * 0.03,
              vertical: context.screenHeight * 0.005,
            ),
            child: Text(items[index].toString()),
          );
        },
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/constants/image_constant.dart';
import 'package:laundry_app/core/constants/router_constants.dart';
import 'package:laundry_app/core/constants/text_constants.dart';
import 'package:laundry_app/core/errors/network_exceptions.dart';
import 'package:laundry_app/core/extensions/screen_size_extension.dart';
import 'package:laundry_app/features/laundry/home/domain/entity/laundry_order_entity.dart';
import 'package:laundry_app/features/laundry/home/presentation/controllers/laundry_orders_cubit.dart';
import 'package:laundry_app/features/laundry/home/presentation/widgets/order_card_list_view_widget.dart';
import 'package:laundry_app/features/laundry/home/presentation/widgets/text_header_list_card_widget.dart';

class HomeLaundryScreen extends StatefulWidget {
  final String laundryId;
  const HomeLaundryScreen({super.key, required this.laundryId});

  @override
  State<HomeLaundryScreen> createState() => _HomeLaundryScreenState();
}

class _HomeLaundryScreenState extends State<HomeLaundryScreen> {
  @override
  void initState() {
    context.read<LaundryOrdersCubit>().emitGetLaundryOrders();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: ColorConstants.backGroundAppColor,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: ColorConstants.backGroundAppColor,
        border: const Border(),
        trailing: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: GestureDetector(
            onTap: () => context
                .push('${RouterConstants.earningScreen}/${widget.laundryId}'),
            child: SvgPicture.asset(
              ImageConstants.earningsIcon,
            ),
          ),
        ),
        leading: const Text(
          "Today's Order",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              fontFamily: TextConstants.openSans),
        ),
      ),
      child: SafeArea(
        child: BlocConsumer<LaundryOrdersCubit, LaundryOrdersState>(
          listener: (context, state) => state.whenOrNull(
            error: (NetworkExceptions networkExceptions) =>
                Fluttertoast.showToast(
                    msg: NetworkExceptions.getErrorMessage(networkExceptions),
                    toastLength: Toast.LENGTH_SHORT),
          ),
          builder: (context, state) {
            return state.when(
              loading: () => const Center(child: CupertinoActivityIndicator()),
              success: (baseLaundryOrderEntity) => ListView.builder(
                itemBuilder: (context, index) => OrderCard(
                  name: baseLaundryOrderEntity.customerName,
                  baseLaundryOrderEntity: baseLaundryOrderEntity,
                ),
              ),
              error: (networkExceptions) => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }
}

class OrderCard<T> extends StatelessWidget {
  final String name;
  final BaseLaundryOrderEntity baseLaundryOrderEntity;

  const OrderCard(
      {super.key, required this.name, required this.baseLaundryOrderEntity});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(
              color: baseLaundryOrderEntity.status == "picked"
                  ? ColorConstants.greenAppColor
                  : ColorConstants.greyBlackColor,
              width: 3,
            ),
          ),
          margin: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: context.screenHeight > 600
                          ? context.smallFontSize
                          : context.mediumFontSize,
                      fontFamily: TextConstants.openSans),
                ),
                SizedBox(
                    height: context.screenHeight > 600
                        ? 10
                        : context.screenHeight * 0.01),
                Text(
                  '6PM - 9PM',
                  style: TextStyle(
                      fontSize: context.smallFontSize,
                      color: CupertinoColors.black,
                      fontFamily: TextConstants.openSans),
                ),
                SizedBox(
                  height: context.screenHeight > 600
                      ? 20
                      : context.screenHeight * 0.02,
                ),
                const TextHeaderListCardWidget(),
                Row(
                  children: [
                    OrderCardListView(
                      items: baseLaundryOrderEntity.both,
                    ),
                    const SizedBox(
                      height: 150,
                      width: 2,
                      child: VerticalDivider(
                        color: CupertinoColors.systemGrey,
                      ),
                    ),
                    OrderCardListView(
                      items: baseLaundryOrderEntity.iron,
                    ),
                    const SizedBox(
                      height: 150,
                      width: 2,
                      child: VerticalDivider(
                        color: CupertinoColors.systemGrey,
                      ),
                    ),
                    OrderCardListView(
                      items: baseLaundryOrderEntity.clean,
                    ),
                  ],
                ),
                SizedBox(
                  height: context.screenHeight > 600
                      ? context.screenHeight * 0.05
                      : context.screenHeight * 0.1,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: context.getImagePositionForScreen.left,
          bottom: context.getImagePositionForScreen.bottom,
          child: SvgPicture.asset(
            ImageConstants.checkCircleIcon,
            color: (baseLaundryOrderEntity.status == "finished" ||
                    baseLaundryOrderEntity.status == "delivered")
                ? ColorConstants.greenAppColor
                : ColorConstants.greyBlackColor,
            width:
                context.screenWidth > 600 ? 60 : context.getIconSizeForScreen,
            height:
                context.screenWidth > 600 ? 80 : context.getIconSizeForScreen,
          ),
        ),
      ],
    );
  }
}

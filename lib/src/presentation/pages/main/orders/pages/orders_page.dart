import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team_ploff_kebab_app/src/core/utils/app_colors.dart';
import 'package:team_ploff_kebab_app/src/presentation/pages/main/orders/widgets/active_order_button.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize:
       Size.fromHeight(120.h),
          child: Container(
            color: Colors.white,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      'Мои заказы',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w600,
                        height: 0.06,
                        letterSpacing: -0.41,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Container(
                      height: 45.h,
                      width: 343.w,
                      decoration: ShapeDecoration(
                        color: AppColors.whiteColors,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                      ),
                      child: Row(
                        children: [
                          Expanded(child: ActiveOrderButton(text: 'Active Order', color: AppColors.white, onTap: (){}, textColor: AppColors.black,)),
                          Expanded(child: ActiveOrderButton(text: 'Orders History', color: AppColors.whiteColors, onTap: (){}, textColor: AppColors.blackColors,)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
          ],
        ),
      ),
    );
  }
}

import 'package:disc_test/app/common/custom_appbar.dart';
import 'package:disc_test/app/common/custom_body_background.dart';
import 'package:disc_test/app/controllers/question/question_controller.dart';
import 'package:disc_test/app/res/colors.dart';
import 'package:disc_test/app/res/sizes.dart';
import 'package:disc_test/app/res/styles.dart';
import 'package:disc_test/app/routes/app_pages.dart';
import 'package:disc_test/app/ui/question/page/question_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kprimaryColorLight,
      body: CustomBackgroundContainer(
        child: Column(
          children: [
            AppbarBackBtn(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppSize.sizeBoxWidthL),
                  child: Column(
                    children: [
                      Text(
                        'Bai trac nghiem DISC',
                        style: AppStyle.titleBoldTextStyle,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: AppSize.sizedBoxHeightL),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.alarm,
                            color: AppColor.kSecondaryColor,
                          ),
                          SizedBox(width: AppSize.sizeBoxWidthM),
                          Text(
                            '00:25:00',
                            style: AppStyle.appTextStyle,
                          )
                        ],
                      ),
                      const SizedBox(height: AppSize.sizedBoxHeightL),
                      Text(
                        'Bài kiểm tra DISC này cho phép bạn xác định loại DISC và tính cách cá nhân nhanh chóng chỉ trong vòng 5-10 phút bằng cách lần lượt chọn miêu tả đúng nhất và khác nhất về bạn '
                        '\n\nHãy nhớ rằng không có câu trả lời đúng hay sai trong bài kiểm tra tính cách DISC này, vì vậy hãy đưa ra quyết định tốt nhất bạn có thể.',
                        style: AppStyle.contentNormalTextStyle,
                      ),
                      const SizedBox(height: 40),
                      ElevatedButton(
                        child: Text(
                          'Start',
                          style: AppStyle.appTextStyle,
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: AppColor.mostBtnColor,
                          shape: StadiumBorder(),
                          minimumSize: Size(
                              AppSize.buttonMinWidth, AppSize.buttonMinHeight),
                        ),
                        onPressed: () {
                          Get.defaultDialog(
                            title: "Notification",
                            content: Text("Are you ready to do the test"),
                            onConfirm: () {
                              Get.back();
                              Get.offNamed(Routes.QUESTION_PAGE);
                            },
                            onCancel: () {},
                            barrierDismissible: false,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

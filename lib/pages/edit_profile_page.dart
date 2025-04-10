import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/component/app_text_field.dart';
import 'package:myfirst_flutter_project/config/app_string.dart';
import 'package:myfirst_flutter_project/pages/tool_bar.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(title: AppString.editProfile, actions: []),
      body: Column(
        children: [
          AppTextField(hint: 'first name'),
          AppTextField(hint: 'last name'),
          AppTextField(hint: 'phone number'),
          AppTextField(hint: 'location'),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ifood_social_app/design_system/buttons/custom_button.widget.dart';
import 'package:ifood_social_app/shared/text_app.dart';

class CreateButton extends StatelessWidget {
  final bool enable;
  final VoidCallback onPressed;

  const CreateButton({
    super.key,
    required this.enable,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      label: TextApp.createButton,
      icon: Icons.save,
      enable: enable,
      onPressed: onPressed,
    );
  }
}

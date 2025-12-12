import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:pathzi/core/strings/strings.dart';
import 'package:pathzi/core/theme/app_colors.dart';
import 'package:pathzi/shared/widgets/custom_appbar_widget.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String? _selectedLanguage;
  final List<String> languages = [
    'Mandarin',
    'Hindi',
    'Spanish',
    'French',
    'Arabic',
    'Bengali',
    'Russian',
    'Indonesian',
    'Portuguese',
    'German',
    'Italian',
    'Japanese',
    'Korean',
    'Turkish',
    'Dutch',
    'Polish',
    'Swedish',
    'Greek',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppbarSecondaryWidget(text: "Languages"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(10.0).column,
              AppText(
                text: "Suggested",
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColors.primary,
              ),
              _languageRadioButton("English (UK)"),
              _languageRadioButton("English (US)"),
              AppText(
                text: "Suggested",
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColors.primary,
              ),
              ...languages
                  .map((language) => _languageRadioButton(language))
                  .toList(),
              Gap(10.0).column,

            ],
          ),
        ),
      ),
    );
  }

  Widget _languageRadioButton(String language) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          language,
          style: TextStyle(
            fontSize: 16,
            color: AppColors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        Radio<String>(
          fillColor: MaterialStateProperty.all(AppColors.primary),
          value: language,
          groupValue: _selectedLanguage,
          onChanged: (String? selectedLanguage) {
            setState(() {
              _selectedLanguage = selectedLanguage;
            });
          },
          activeColor: AppColors
              .primary, // You can use any color here for active radio button
        ),
      ],
    );
  }
}

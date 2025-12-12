import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:pathzi/core/theme/app_colors.dart';
import 'package:pathzi/features/profile/widgets/setting_profile_widget.dart';
import 'package:pathzi/shared/widgets/custom_appbar_widget.dart';
import 'package:pathzi/shared/widgets/custom_dropdown.dart';
import 'package:pathzi/shared/widgets/custom_textfield.dart';
import 'package:pathzi/shared/widgets/custom_widget.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppbarWidget(text: "Edit Profile"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(height * 0.10).column,
              SettingProfileEditWidget(),
              Gap(20.0).column,
              CustomTextField(hintText: "Name"),
              CustomTextField(hintText: "Email"),
              CustomTextField(hintText: "Password"),
              CustomDropdownField(
                hintText: "Select Age",

                isSuffixShow: true,
                items: ageItems,
                onChanged: (val) {
                  print("Selected: $val");
                },
                validator: (val) {
                  if (val == null) return "Please select an option";
                  return null;
                },
              ),
              CustomDropdownField(
                hintText: "Career Switcher",

                isSuffixShow: true,
                items: careerSwitchItems,
                onChanged: (val) {
                  print("Selected: $val");
                },
                validator: (val) {
                  if (val == null) return "Please select an option";
                  return null;
                },
              ),
              CustomDropdownField(
                hintText: "Interests",

                isSuffixShow: true,
                items: interestItems,
                onChanged: (val) {
                  print("Selected: $val");
                },
                validator: (val) {
                  if (val == null) return "Please select an option";
                  return null;
                },
              ),
              Gap(20.0).column,

              CustomButton(
                text: "Update",
                color: AppColors.primary,
                textColor: AppColors.white,
                fontSize: 20,
                width: width * 0.60,
                onTap: () {
                  // context.pushNamed(AppRouteNames.preferences);
                },
              ),
              Gap(height * 0.10).column,
            ],
          ),
        ),
      ),
    );
  }
}

final List<DropdownMenuItem<int>> ageItems = List.generate(
  100,
  (index) => DropdownMenuItem(value: index + 1, child: Text('${index + 1}')),
);
final List<DropdownMenuItem<String>> careerSwitchItems = [
  DropdownMenuItem(
    value: "software_development",
    child: Text("Software Development"),
  ),
  DropdownMenuItem(value: "data_science", child: Text("Data Science")),
  DropdownMenuItem(
    value: "digital_marketing",
    child: Text("Digital Marketing"),
  ),
  DropdownMenuItem(
    value: "project_management",
    child: Text("Project Management"),
  ),
  DropdownMenuItem(value: "graphic_design", child: Text("Graphic Design")),
  DropdownMenuItem(value: "cyber_security", child: Text("Cyber Security")),
  DropdownMenuItem(
    value: "product_management",
    child: Text("Product Management"),
  ),
  DropdownMenuItem(value: "sales", child: Text("Sales")),
  DropdownMenuItem(value: "human_resources", child: Text("Human Resources")),
  DropdownMenuItem(value: "education", child: Text("Education")),
  DropdownMenuItem(value: "finance", child: Text("Finance")),
  DropdownMenuItem(value: "healthcare", child: Text("Healthcare")),
  DropdownMenuItem(value: "consulting", child: Text("Consulting")),
];
final List<DropdownMenuItem<String>> interestItems = [
  // STEM (Science, Technology, Engineering, Mathematics)
  DropdownMenuItem(
    value: "software_development",
    child: Text("Software Development"),
  ),
  DropdownMenuItem(value: "data_science", child: Text("Data Science")),
  DropdownMenuItem(
    value: "artificial_intelligence",
    child: Text("Artificial Intelligence"),
  ),
  DropdownMenuItem(value: "cybersecurity", child: Text("Cybersecurity")),
  DropdownMenuItem(
    value: "engineering",
    child: Text("Engineering (Mechanical, Electrical, etc.)"),
  ),
  DropdownMenuItem(
    value: "mathematics",
    child: Text("Mathematics & Statistics"),
  ),

  // Creative
  DropdownMenuItem(value: "graphic_design", child: Text("Graphic Design")),
  DropdownMenuItem(value: "photography", child: Text("Photography")),
  DropdownMenuItem(
    value: "animation",
    child: Text("Animation & Motion Design"),
  ),
  DropdownMenuItem(value: "fashion_design", child: Text("Fashion Design")),
  DropdownMenuItem(value: "writing", child: Text("Writing & Journalism")),
  DropdownMenuItem(value: "music_production", child: Text("Music Production")),

  // Business
  DropdownMenuItem(
    value: "business_strategy",
    child: Text("Business Strategy & Consulting"),
  ),
  DropdownMenuItem(value: "marketing", child: Text("Marketing")),
  DropdownMenuItem(value: "finance", child: Text("Finance & Accounting")),
  DropdownMenuItem(value: "sales", child: Text("Sales & Customer Relations")),
  DropdownMenuItem(value: "entrepreneurship", child: Text("Entrepreneurship")),
  DropdownMenuItem(
    value: "product_management",
    child: Text("Product Management"),
  ),

  // Health
  DropdownMenuItem(
    value: "healthcare",
    child: Text("Healthcare (Doctors, Nurses, Therapists)"),
  ),
  DropdownMenuItem(
    value: "mental_health",
    child: Text("Mental Health & Therapy"),
  ),
  DropdownMenuItem(
    value: "biomedical_research",
    child: Text("Biomedical Research"),
  ),
  DropdownMenuItem(value: "fitness", child: Text("Fitness & Nutrition")),
  DropdownMenuItem(
    value: "pharmaceutical_sciences",
    child: Text("Pharmaceutical Sciences"),
  ),

  // Trades
  DropdownMenuItem(value: "plumbing", child: Text("Plumbing")),
  DropdownMenuItem(value: "carpentry", child: Text("Carpentry & Woodworking")),
  DropdownMenuItem(value: "welding", child: Text("Welding")),
  DropdownMenuItem(
    value: "hvac",
    child: Text("HVAC (Heating, Ventilation, Air Conditioning)"),
  ),
  DropdownMenuItem(value: "auto_mechanics", child: Text("Auto Mechanics")),

  // Social Impact
  DropdownMenuItem(
    value: "nonprofit_work",
    child: Text("Nonprofit & NGO Work"),
  ),
  DropdownMenuItem(
    value: "environmental_sustainability",
    child: Text("Environmental Sustainability"),
  ),
  DropdownMenuItem(value: "humanitarian_aid", child: Text("Humanitarian Aid")),
  DropdownMenuItem(value: "education", child: Text("Education & Teaching")),
  DropdownMenuItem(
    value: "social_impact",
    child: Text("Social Work & Advocacy"),
  ),

  // Technology
  DropdownMenuItem(value: "web_development", child: Text("Web Development")),
  DropdownMenuItem(value: "app_development", child: Text("App Development")),
  DropdownMenuItem(value: "game_development", child: Text("Game Development")),
  DropdownMenuItem(value: "cloud_computing", child: Text("Cloud Computing")),
  DropdownMenuItem(
    value: "blockchain",
    child: Text("Blockchain & Cryptocurrency"),
  ),

  // Sports
  DropdownMenuItem(
    value: "professional_sports",
    child: Text("Professional Sports"),
  ),
  DropdownMenuItem(
    value: "sports_management",
    child: Text("Sports Management"),
  ),
  DropdownMenuItem(
    value: "athletic_performance",
    child: Text("Athletic Performance & Nutrition"),
  ),

  // Lifestyle
  DropdownMenuItem(value: "travel", child: Text("Travel & Adventure")),
  DropdownMenuItem(value: "cooking", child: Text("Cooking & Culinary Arts")),
  DropdownMenuItem(
    value: "fashion_styling",
    child: Text("Fashion & Personal Styling"),
  ),
  DropdownMenuItem(value: "event_planning", child: Text("Event Planning")),
  DropdownMenuItem(value: "home_decor", child: Text("Home & Interior Design")),
  DropdownMenuItem(value: "gaming", child: Text("Gaming & Esports")),
  DropdownMenuItem(
    value: "pet_care",
    child: Text("Pet Care & Animal Training"),
  ),
  DropdownMenuItem(value: "diy", child: Text("DIY & Crafts")),
];

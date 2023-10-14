import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app_2/ui/custom%20widgets/text%20field/text_field.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
      height: mediaQuery.height * 0.5,
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add new Task",
            style: theme.textTheme.displayLarge,
            textAlign: TextAlign.center,
          ),
          CustomTextField(hint: "Enter your task title"),
          CustomTextField(hint: "Enter your task description"),
          Text(
            "Select Date",
            style: theme.textTheme.displayMedium,
          ),
          Text(
            "10/14/2023",
            style: theme.textTheme.displaySmall,
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Add Task',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

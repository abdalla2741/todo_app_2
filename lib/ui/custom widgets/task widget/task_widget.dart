import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTaskWidget extends StatelessWidget {
  const CustomTaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 22, horizontal: 30),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        color: Color(0xFFEC4B4B),
      ),
      child: Slidable(
        startActionPane: ActionPane(
          extentRatio: 0.25,
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              borderRadius: BorderRadius.circular(15),
              onPressed: (context) {},
              backgroundColor: const Color(0xFFEC4B4B),
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'delete',
            ),
          ],
        ),
        child: Container(
          height: mediaQuery.height * 0.13,
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              color: Colors.white),
          child: Row(
            children: [
              const VerticalDivider(),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Play basketball",
                      style: theme.textTheme.bodyLarge,
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                    ),
                    Text(
                      "knflrferjn;jrf;mmr;wafm;oarbjbuglkgukgk",
                      style: theme.textTheme.bodyMedium,
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.timer_outlined,
                          color: Colors.black,
                          size: 20,
                        ),
                        Text(
                          "2:31 PM",
                          style: GoogleFonts.roboto(
                              color: Colors.grey, fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 70,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: theme.colorScheme.primary,
                ),
                child: const Icon(Icons.check_rounded, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}

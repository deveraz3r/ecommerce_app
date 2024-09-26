import 'package:flutter/material.dart';

class ReuseableAppBar extends StatefulWidget implements PreferredSizeWidget {
  ReuseableAppBar({
    super.key,
    required this.titleText,
    this.leadingButtonText,
    this.leadingOnPressed,
    this.actionsButtonText,
    this.actionsOnPressed,
    this.enableActionButton = true,
    this.enableLeadingButton = true,
  });

  final String titleText;
  final String? leadingButtonText;
  final String? actionsButtonText;
  final VoidCallback? leadingOnPressed;
  final VoidCallback? actionsOnPressed;
  final bool enableActionButton;
  final bool enableLeadingButton;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  State<ReuseableAppBar> createState() => _ReuseableAppBarState();
}

class _ReuseableAppBarState extends State<ReuseableAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: widget.enableLeadingButton
          ? TextButton(
              child: Text(
                widget.leadingButtonText!,
                style: TextStyle(color: Colors.green),
              ),
              onPressed: widget.leadingOnPressed ?? () {},
            )
          : SizedBox.shrink(),
      title: Text(
        widget.titleText,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 30,
        ),
      ),
      actions: [
        widget.enableActionButton
            ? TextButton(
                child: Text(
                  widget.actionsButtonText!,
                  style: TextStyle(color: Colors.green),
                ),
                onPressed: widget.actionsOnPressed ?? () {},
              )
            : SizedBox.shrink(),
      ],
    );
  }
}

// class ReuseableAppbar extends StatelessWidget implements PreferredSizeWidget {
//   ReuseableAppbar({
//     super.key,
//     required this.titleText,
//     this.leadingButtonText,
//     this.leadingOnPressed,
//     this.actionsButtonText,
//     this.actionsOnPressed,
//     this.enableActionButton = true,
//     this.enableLeadingButton = true,
//   });

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);

//   final String titleText;
//   final String? leadingButtonText;
//   final String? actionsButtonText;
//   var leadingOnPressed;
//   var actionsOnPressed;
//   final bool enableActionButton;
//   final bool enableLeadingButton;

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       centerTitle: true,
//       leading: enableLeadingButton
//           ? TextButton(
//               child: Text(
//                 leadingButtonText!,
//                 style: TextStyle(color: Colors.green),
//               ),
//               onPressed: leadingOnPressed,
//             )
//           : SizedBox.shrink(),
//       title: Text(
//         titleText,
//         textAlign: TextAlign.center,
//         style: TextStyle(
//           fontWeight: FontWeight.w800,
//           fontSize: 30,
//         ),
//       ),
//       actions: [
//         enableActionButton
//             ? TextButton(
//                 child: Text(
//                   actionsButtonText!,
//                   style: TextStyle(color: Colors.green),
//                 ),
//                 onPressed: actionsOnPressed,
//               )
//             : SizedBox.shrink(),
//       ],
//     );
  // }
// }

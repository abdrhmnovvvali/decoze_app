// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// import '../../../../core/constants/app_assets.dart';
// import '../../../../core/constants/app_colors.dart';
// import '../../core/services/image_picker_service.dart';

// class CustomProfilePhoto extends StatefulWidget {
//   const CustomProfilePhoto({
//     super.key,
//     this.showEdit = false,
//     this.radius = 72,
//     this.onTap,
//     this.addEdit = false,
//     this.imageNetworkUrl,
//   });

//   final bool showEdit;
//   final bool addEdit;
//   final double radius;
//   final VoidCallback? onTap;
//   final String? imageNetworkUrl;

//   @override
//   State<CustomProfilePhoto> createState() => _CustomProfilePhotoState();
// }

// class _CustomProfilePhotoState extends State<CustomProfilePhoto> {
//   Future<File?>? future;

//   void _openGallery() {
//     future = ImagePickerService.instance.pickImageFromGallery();
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: widget.showEdit || widget.addEdit ? _openGallery : widget.onTap,
//       child: Stack(
//         clipBehavior: Clip.none,
//         children: [
//           if (widget.showEdit || widget.addEdit)
//             FutureBuilder(
//               future: future,
//               builder: (_, snapshot) {
//                 final imageFile = snapshot.data;
//                 return CircleAvatar(
//                   radius: widget.radius,
//                   backgroundImage: imageFile != null
//                       ? FileImage(imageFile)
//                       : (widget.imageNetworkUrl != null
//                             ? NetworkImage(widget.imageNetworkUrl!)
//                             : const AssetImage(AppAssets.customPhoto)
//                                   as ImageProvider),
//                 );
//               },
//             )
//           else
//             CircleAvatar(
//               radius: widget.radius,
//               foregroundImage: NetworkImage(
//                 widget.imageNetworkUrl ??
//                     'https://static.vecteezy.com/system/resources/previews/009/292/244/non_2x/default-avatar-icon-of-social-media-user-vector.jpg',
//               ),
//             ),
//           if (widget.showEdit)
//             Positioned(
//               bottom: 0,
//               right: 0,
//               child: GestureDetector(
//                 onTap: _openGallery,
//                 child: CircleAvatar(
//                   maxRadius: 20,
//                   backgroundColor: AppColors.goldenFizz,
//                   child: SvgPicture.asset(
//                     fit: BoxFit.cover,
//                     AppAssets.penFrame,
//                     colorFilter: const ColorFilter.mode(
//                       AppColors.gunMetal,
//                       BlendMode.srcIn,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           if (widget.addEdit)
//             Positioned(
//               bottom: 0,
//               right: 0,
//               child: GestureDetector(
//                 onTap: _openGallery,
//                 child: SvgPicture.asset(
//                   AppAssets.penFrame,
//                   colorFilter: const ColorFilter.mode(
//                     AppColors.transparent,
//                     BlendMode.srcIn,
//                   ),
//                   width: 20,
//                   height: 20,
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }

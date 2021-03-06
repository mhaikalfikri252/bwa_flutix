import 'dart:io';
import 'package:another_flushbar/flushbar.dart';
import 'package:bwa_flutix/bloc/blocs.dart';
import 'package:bwa_flutix/bloc/page_bloc.dart';
import 'package:bwa_flutix/models/models.dart';
import 'package:bwa_flutix/services/services.dart';
import 'package:bwa_flutix/shared/shared.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:email_validator/email_validator.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

part 'sign_in_page.dart';
part 'wrapper.dart';
part 'main_page.dart';
part 'splash_page.dart';
part 'movie_page.dart';
part 'preference_page.dart';
part 'account_confirmation_page.dart';
part 'sign_up_page.dart';

final picker = ImagePicker();

Future getImage() async {
  final PickedFile image = await picker.getImage(source: ImageSource.gallery);
  final File file = File(image.path);
  return file;
}

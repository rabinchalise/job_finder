import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:job_finder/utils/extension.dart';

import '../../../../utils/colors.dart';

class FilePickerContainer extends StatefulWidget {
  const FilePickerContainer({
    super.key,
  });

  @override
  State<FilePickerContainer> createState() => _FilePickerContainerState();
}

class _FilePickerContainerState extends State<FilePickerContainer> {
  FilePickerResult? result;
  String? _fileName;
  PlatformFile? pickedFile;
  bool isLoading = false;
  File? fileToDisplay;

  void pickFile() async {
    try {
      setState(() {
        isLoading = true;
      });
      result = await FilePicker.platform.pickFiles(
        type: FileType.any,
        allowMultiple: false,
      );

      if (result != null) {
        _fileName = result!.files.first.name;
        pickedFile = result!.files.first;
        fileToDisplay = File(pickedFile!.path.toString());
      }
    } catch (e) {
      throw e.toString();
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
            color: kSecondaryColor, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (pickedFile != null)
                Flexible(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.file(
                        fileToDisplay!,
                      ),
                    ),
                    5.0.verticalSpacer,
                    Text(_fileName!)
                  ],
                )),
              isLoading
                  ? const CircularProgressIndicator()
                  : IconButton(
                      onPressed: () {
                        pickFile();
                      },
                      icon: const Icon(
                        Icons.file_upload,
                        color: kPrimaryColor,
                        size: 50,
                      ),
                    ),
              8.0.verticalSpacer,
              const Text(
                'Click Here To Upload',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              )
            ],
          ),
        ));
  }
}

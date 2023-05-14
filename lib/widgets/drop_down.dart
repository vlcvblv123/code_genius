import 'package:code_genius/constants/color.dart';
import 'package:code_genius/constants/constants.dart';
import 'package:code_genius/models/models_model.dart';
import 'package:code_genius/services/api_services.dart';
import 'package:code_genius/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ModelsDropDownWidget extends StatefulWidget {
  const ModelsDropDownWidget({super.key});

  @override
  State<ModelsDropDownWidget> createState() => _ModelsDropDownWidgetState();
}

class _ModelsDropDownWidgetState extends State<ModelsDropDownWidget> {
  String currentModel = "gpt-3.5-turbo-0301";
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ModelsModel>>(
        future: ApiService.getModels(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: TextWidget(
                label: snapshot.error.toString(),
              ),
            );
          }
          return snapshot.data == null || snapshot.data!.isEmpty
              ? SizedBox.shrink()
              : FittedBox(
                  child: DropdownButton(
                      dropdownColor: scfbgc,
                      iconEnabledColor: Colors.white,
                      items: List<DropdownMenuItem<String>>.generate(
                          snapshot.data!.length,
                          (index) => DropdownMenuItem(
                                value: snapshot.data![index].id,
                                child: TextWidget(
                                  label: snapshot.data![index].id,
                                  fontSize: 15,
                                ),
                              )),
                      value: currentModel,
                      onChanged: (value) {
                        setState(() {
                          currentModel = value.toString();
                        });
                      }),
                );
        });
  }
}

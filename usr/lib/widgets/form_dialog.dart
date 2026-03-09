import 'package:flutter/material.dart';

class FormDialog extends StatefulWidget {
  const FormDialog({super.key, required this.title, required this.fields, required this.onSubmit});

  final String title;
  final List<Map<String, dynamic>> fields;
  final Function(Map<String, String>) onSubmit;

  @override
  State<FormDialog> createState() => _FormDialogState();
}

class _FormDialogState extends State<FormDialog> {
  final _controllers = <String, TextEditingController>{};

  @override
  void initState() {
    super.initState();
    for (final field in widget.fields) {
      _controllers[field['label']] = TextEditingController();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title),
      content: SingleChildScrollView(
        child: Column(
          children: widget.fields.map((field) {
            if (field['type'] == 'select') {
              return DropdownButtonFormField<String>(
                items: (field['options'] as List<String>).map((option) {
                  return DropdownMenuItem(value: option, child: Text(option));
                }).toList(),
                onChanged: (value) => _controllers[field['label']]!.text = value!,
                decoration: InputDecoration(labelText: field['label']),
              );
            }
            return TextField(
              controller: _controllers[field['label']],
              decoration: InputDecoration(labelText: field['label']),
            );
          }).toList(),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            final data = <String, String>{};
            _controllers.forEach((key, controller) {
              data[key] = controller.text;
            });
            widget.onSubmit(data);
            Navigator.pop(context);
          },
          child: const Text('Submit'),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Antonio',
      'last_name': 'Ponce',
      'email': 'ajponce@indra.es',
      'password': '123456',
      'role': 'admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y  Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            onChanged: null,
            child: Column(
              children: [
                CustomInputField(
                  hintText: 'Nombre de usuario',
                  labelText: 'Nombre',
                  helperText: 'Quedan 6 caracteres',
                  icon: Icons.verified_user_outlined,
                  suffixicon: Icons.group_outlined,
                  formProperty: "first_name",
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  hintText: 'Apellido de usuario',
                  labelText: 'Apellido',
                  formProperty: "last_name",
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  hintText: 'Email de usuario',
                  labelText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  formProperty: "email",
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  hintText: 'Contraseña de usuario',
                  labelText: 'Contraseña',
                  obscureText: true,
                  formProperty: "password",
                  formValues: formValues,
                ),
                DropdownButtonFormField<String>(
                    value: 'Developer',
                    items: const [
                      DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                      DropdownMenuItem(
                          value: 'Superuser', child: Text('Superuser')),
                      DropdownMenuItem(
                          value: 'Developer', child: Text('Developer')),
                      DropdownMenuItem(
                          value: 'Jr. Developer', child: Text('Jr. Developer')),
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                    }),
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar')),
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario no valido');
                      return;
                    }

                    print(formValues);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

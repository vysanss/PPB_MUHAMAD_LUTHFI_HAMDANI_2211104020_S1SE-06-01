String? selectedValue;

DropdownButton<String>(
  value: selectedValue,
  hint: Text('Pilih Opsi'),
  onChanged: (String? newValue) {
    setState(() {
      selectedValue = newValue;
    });
  },
  items: <String>['Opsi 1', 'Opsi 2', 'Opsi 3']
      .map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList(),
);

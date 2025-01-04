import 'package:flutter/cupertino.dart';

class CurrencyConverterCuptertinoPage extends StatefulWidget {
  const CurrencyConverterCuptertinoPage({super.key});

  @override
  State<CurrencyConverterCuptertinoPage> createState() => _CurrencyConverterCuptertinoPageState();
}

class _CurrencyConverterCuptertinoPageState extends State<CurrencyConverterCuptertinoPage> {

  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return  CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,
        middle: Text(
          'Currency Converter',
          style: TextStyle(
            color: CupertinoColors.white,
          ),
        ),
      ),
      child: Center(
        child: ColoredBox(
          color: CupertinoColors.systemGrey3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                result.toString(),
                style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 39, 36, 36)
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CupertinoTextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: CupertinoColors.black,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5),
                    color: CupertinoColors.white, 
                  ),
                  placeholder: 'Please Enter The Amount In USD',
                  prefix: const Icon(CupertinoIcons.money_dollar),
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  
                ),
              ),

              Padding(
                // why is my button having rounded corners tho?
                // is it because of the sibling above?
                // manually specifying shape overrides it tho :D
                padding: const EdgeInsets.all(10),
                child: CupertinoButton(
                  onPressed: () {
                    setState(() {
                      result = double.parse(textEditingController.text) * 81;
                    });
                  }, 
                  color: CupertinoColors.black,
                  child: const Text('Convert')
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
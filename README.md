# StringFormatter

Simple Text Formetter (Credit Card Number, Phone Number etc.) 

## Display Visual Example 

----
![Visual1](http://g.recordit.co/bSDHyTdioe.gif)


Installation
--------------

To use the StringFormatter extension in an app, just drag the StringFormatter extension file (demo files and assets are not needed) into your project.


Methods
--------------

The StringFormatter extension has the following methods (note: for iOS, String in method arguments):

* func format(_ format: String, oldString: String) -> String

Formatting method according to given format pattern. oldString can be empty(""), but the final character formatting may not work smoothly.

* func unformat(_ format: String, oldString: String) -> String

Unformatting method according to given format pattern. oldString can be empty(""), but the final character unformatting may not work smoothly.


How to use ?
----------

'x' or 'X' -> Any character
'c' or 'C' -> Alphabetic character
'n' or 'N' -> Numerical character


```Swift


extension ViewController: UITextFieldDelegate {
func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {

guard let text = textField.text else {
return true
}
let lastText = (text as NSString).replacingCharacters(in: range, with: string) as String

if textfieldPhoneNumber == textField {
textField.text = lastText.format("(NNN) NNN NN NN", oldString: text)
return false
} else if textfieldCreditCard == textField {
textField.text = lastText.format("nnnn nnnn nnnn nnnn", oldString: text)
return false
} else if textfieldSerialNumber == textField {
textField.text = lastText.format("XX NNNN", oldString: text)
return false
}
return true
}
}


```

Build and run the project files. Enjoy more examples!

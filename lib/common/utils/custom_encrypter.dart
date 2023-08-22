import 'package:encrypt/encrypt.dart' as enc;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:schooldata_hub_client/common/utils/debug_printer.dart';

class CustomEncrypter {
  Future<String?> decrypt(String encryptedString) async {
    if (encryptedString == '') {
      return null;
    }
    // We get the encryption keys from the .env file
    final String? envKey = dotenv.env['KEY'];
    final String? envIv = dotenv.env['IV'];

    //final keyutf8 = await rootBundle.loadString('assets/keys/keyaes256cbc.txt');
    //final ivutf8 = await rootBundle.loadString('assets/keys/ivaes256cbc.txt');
    // We have to convert them from Utf8 to use them
    final key = enc.Key.fromUtf8(envKey!);
    final iv = enc.IV.fromUtf8(envIv!);
    final thisEncryptedString = enc.Encrypted.fromBase64(encryptedString);
    final encrypter = enc.Encrypter(enc.AES(key, mode: enc.AESMode.cbc));
    final decryptedString = encrypter.decrypt(thisEncryptedString, iv: iv);

    Debug.info('Decrypted string is $decryptedString');

    return decryptedString;
  }

  Future<String?> encrypt(String nonEncryptedString) async {
    if (nonEncryptedString == '') {
      return null;
    }
    // We get the encryption keys from the .env file
    final String? envKey = dotenv.env['KEY'];
    final String? envIv = dotenv.env['IV'];
    Debug.info('Keys are $envKey, $envIv');

    //final keyutf8 = await rootBundle.loadString('assets/keys/keyaes256cbc.txt');
    //final ivutf8 = await rootBundle.loadString('assets/keys/ivaes256cbc.txt');
    // We have to convert them from Utf8 to use them
    final key = enc.Key.fromUtf8(envKey!);
    final iv = enc.IV.fromUtf8(envIv!);
    final encrypter = enc.Encrypter(enc.AES(key, mode: enc.AESMode.cbc));
    final encryptedString =
        encrypter.encrypt(nonEncryptedString, iv: iv).base64;
    return encryptedString;
  }
}

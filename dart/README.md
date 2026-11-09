# Love Calculator API - Dart/Flutter Client

Love Calculator calculates romantic compatibility between any two names, returning a match percentage and summary text. Paid plans add detailed compatibility advice for the pair.

[![pub package](https://img.shields.io/pub/v/apiverve_lovecalculator.svg)](https://pub.dev/packages/apiverve_lovecalculator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Love Calculator API](https://apiverve.com/marketplace/lovecalculator?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_lovecalculator: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_lovecalculator/apiverve_lovecalculator.dart';

void main() async {
  final client = LovecalculatorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'name1': 'John',
      'name2': 'Jane'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "name1": "Jane",
    "name2": "John",
    "lovePercentage": "62%",
    "response": "You have good chemistry. Keep getting to know each other and see where it leads.",
    "additionalText": "The love percentage between Jane and John is 62%."
  }
}
```

## API Reference

- **API Home:** [Love Calculator API](https://apiverve.com/marketplace/lovecalculator?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/lovecalculator](https://docs.apiverve.com/ref/lovecalculator?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)

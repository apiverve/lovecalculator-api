# Love Calculator API - PHP Package

Love Calculator is a simple tool for calculating love compatibility. It returns the love compatibility percentage between two names.

## Installation

Install via Composer:

```bash
composer require apiverve/lovecalculator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Lovecalculator\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'name1' => 'John',
    'name2' => 'Jane'
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Lovecalculator\Client;
use APIVerve\Lovecalculator\Exceptions\APIException;
use APIVerve\Lovecalculator\Exceptions\ValidationException;

try {
    $response = $client->execute(['name1' => 'John', 'name2' => 'Jane']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/lovecalculator?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/lovecalculator?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/lovecalculator?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).

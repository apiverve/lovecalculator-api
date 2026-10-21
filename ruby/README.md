# Love Calculator API - Ruby Gem

Love Calculator calculates romantic compatibility between any two names, returning a match percentage and summary text. Paid plans add detailed compatibility advice for the pair.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_lovecalculator'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_lovecalculator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_lovecalculator'

# Initialize the client
client = APIVerve::Lovecalculator::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  name1: "John",
  name2: "Jane"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ name1: "John", name2: "Jane" })
  puts response["data"]
rescue APIVerve::Lovecalculator::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Lovecalculator::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Lovecalculator::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/lovecalculator?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/lovecalculator?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/lovecalculator?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).

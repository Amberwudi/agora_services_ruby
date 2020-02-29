# AgoraServicesRuby
Provide some ruby demos using agora services

## Development Environment
Ruby 2.6.3

## Usage
Generate the Authorization which will be used in Http Header.
```ruby
require './cloud_recording/authorization_generator.rb'

customer_id = 'customer_id'
customer_certificate = 'customer_certificate'
AuthorizationGenerator.new.generate_authorization(customer_id, customer_certificate) # Authorization in Http Header
```

Check the signature which was added in Http Header.
```ruby
require './message_notification_service/signature_checker.rb'

signature = 'signature'
request_body = 'request_body'
SignatureChecker.new.check_signature(signature, request_body) # true or false
```
# Greens Client

A ruby gem to connect to the Greens minter to manage ARKs

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'greens_client', git: 'https://github.com/uhlibraries-digital/greens_client.git'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install greens_client

## Usage

You can specify the Greens api `enpoint`, `prefix`, and `api_key` in the model class.
This could be something that is set in `config/initializers`

```ruby
GreensClient::Ark.base_url = ENV.fetch("API_ENDPOINT_URL")
GreensClient::Ark.prefix = ENV.fetch("API_ARK_PREFIX")
GreensClient::Ark.api_key = ENV.fetch("API_KEY")
```

To create a new ark

```ruby
# mint a new ark
@ark = GreensClient::Ark.create(
    who: "John Doe"
    what: "Image 001"
    where: "Special Collections, room 102"
)

@ark.id # => the new minted ark

# update erc core metadata
@ark = GreensClient::Ark.new
@ark.id = ark_id
@ark.who = "John Doe"
@ark.what = "Image 001"
@ark.where = "Special Collections, room 102"
@ark.save
```

## License

**[Apache-2.0](LICENSE.txt)**

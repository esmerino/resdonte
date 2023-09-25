<h3 align="center">
  Create resdontê or soborô by AI
</h3>

<h1 align="center" style="border-bottom: none">
  <div>
    <img  alt="Resdontê" src="https://github.com/esmerino/resdonte/blob/main/app/assets/images/screenshot.png"  width="50%" height="50%" />
  </div>

  <div>
    <img  alt="Resdontê" src="https://github.com/esmerino/resdonte/blob/main/app/assets/images/ios.png"  width="50%" height="50%" />
  </div>
</h1>

## Features

- [x] Integration to OpenAI
- [x] Get recipes by ingredients
- [x] Easy views like chat
- [x] Mobile IOS/ANDROID
- [ ] Deploy by Kamal

## Getting Started

1. You must have the following dependencies installed:

     - Ruby 3
          - See [`.ruby-version`](.ruby-version) for the specific version.
     - Node 16 
          - See [`.nvmrc`](.nvmrc) for the specific version.
     - PostgreSQL 13
     - Redis 6.2
     - [Chrome](https://www.google.com/search?q=chrome) (for headless browser tests)

    If you don't have these installed, you can use [rails.new](https://rails.new) to help with the process.

2. Run the `bin/setup` script.
3. Start the application with `bin/dev`.
4. Visit http://localhost:3000.

## Usage

- Get your API key from [https://platform.openai.com/account/api-keys](https://platform.openai.com/account/api-keys)

### With Config

Set your api key on `openai.rb` initializer file.

```ruby
OpenAI.configure do |config|
    config.access_token = Rails.application.credentials.openai.access_token || ENV.fetch("OPENAI_ACCESS_TOKEN")
end
```

## Contributing

In general, we follow the "fork-and-pull" Git workflow.

 1. **Fork** the repo on GitHub
 2. **Clone** the project to your own machine
 3. **Commit** changes to your own branch
 4. **Push** your work back up to your fork
 5. Submit a **Pull request** so that we can review your changes

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

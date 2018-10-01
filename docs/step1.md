# setup develop environment

## setting

- vscode
  - Ruby linter
  - debugger
- Rails
  - 5.2.1
  - api mode
- ruby
  - 2.5.1
- RSpec
  - `https://qiita.com/Ushinji/items/522ed01c9c14b680222c`
  - error `uninitialized constant FactoryBot`
    - add `require 'factory_bot'` to `spec/rails_helper.rb`
  - FactoryBot is not create data.
    - restart spring.

```spec_helper.rb
Rspec.configure do |config|
  config.before(:all) do
    FactoryBot.reload
  end
...
end
```

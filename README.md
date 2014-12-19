# Deals Dental

## Setup
Running `bundle exec rake db:seed` is needed in order to seed the database with initial Zones, Countries and States.

Then running a `bundle exec rake dealsdental:basic_data` is needed to set up the initial Deals Dental shop configuration. This includes payment menthods, shipping methods, tax rates and such.

When setting up a new development environment a `bundle exec rake dealsdental:development_data` can be run in order to seed the shop with a few products.

When preparing a new production system, the target `dealsdental:production_data` is available. It expects the `initial_load.csv` to be available in `db/dealsdental/` (this file is not in the repository).

## Deployment instructions
When deploying to a new server make sure you run at least

```
bundle exec rake db:seed dealsdental:basic_data
```

to create the minimal configuration for a new shop.

### Configuration

The following environment variables are expected to be set accordingly:

```
ENV["SMTP_ADDRESS"]
ENV["SMTP_PORT"]
ENV["SMTP_USERNAME"]
ENV["SMTP_PASSWORD"]
```

*test text*

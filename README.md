# FinacleApi

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'finacle_api'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install finacle_api

## Usage

    client = Finacle::Client.new(
      :user_id => ''
      :password => ''
    )

    client.configuration({
      :endpoints => {
        :bal_inq => '/BalInq',
        :ret_cust_acct_inq => '/RetCustAcctInq',
      }
    })

    client.balance_inquiry(account_id)

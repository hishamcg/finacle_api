# FinacleApi

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'finacle_api', :git => 'git://github.com/StrataLabs/finacle_api.git'

And then execute:

    $ bundle

## Usage

    client = FinacleApi::Client.new(
      :user_id => '',
      :password => '',
      :endpoint => ''
    )

    client.configuration({
      :endpoints => {
        :bal_inq => '/BalInq',
        :ret_cust_acct_inq => '/RetCustAcctInq',
      }
    })

    client.balance_inquiry(account_id)

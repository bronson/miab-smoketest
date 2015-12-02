## Mail-in-a-Box Smoketest

Quick hack to see how hard it is to write a service monitor in rspec.

UPDATE: it's not too hard, and the syntax is kind of nice, but it's
not currently a good fit.  For example, if an attempt to connect to an
imap server fails, I want to skip ALL imap-related tests.  This is
completely at odds with what rspec wants to do, and the workarounds
get ugly.

It might be worth writing an rspec extension where any test failure
in a block would skip the rest of the tests in that block.  That would
take care of my biggest complaint.


### Install

Make sure you have a working Ruby interpreter.  Then:

```
git clone https://github.com/bronson/miab-smoketest
cd miab-smoketest
bundle install
```

Then edit the `config.rb` file to specify the server to test and
the data you expect it to return.


### Run

To run all tests: `rspec`

To run a single test: `rspec spec/https_spec.rb`

To try a different server: `HOST=192.168.122.10 rspec`


## TODO

* first make rspec more friendly to writing service tests
* check all open ports
* imap
* etc etc etc

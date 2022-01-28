# g11n_locale_service_ruby

A sample ruby service library for getting list of supported locales from VIP, with parallel thread for refreshing expired cache.

## Build a gem

```
$ gem build locales_service.gemspec 
WARNING:  licenses is empty, but is recommended.  Use a license identifier from
http://spdx.org/licenses or 'Nonstandard' for a nonstandard license.
WARNING:  no homepage specified
WARNING:  See http://guides.rubygems.org/specification-reference/ for help
  Successfully built RubyGem
  Name: locales_service
  Version: 0.0.1
  File: locales_service-0.0.1.gem
```

## Install the generated gem locally to test it out

```
$ gem install ./locales_service-0.0.1.gem
Successfully installed locales_service-0.0.1
```

## Use in a sample app

See sample app [here](https://gitlab.eng.vmware.com/jjuachon/g11n_locale_service_ruby/).
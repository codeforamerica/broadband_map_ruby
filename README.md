# Broadband Map [![Build Status](https://travis-ci.org/codeforamerica/broadband_map_ruby.svg?branch=master)](http://travis-ci.org/codeforamerica/broadband_map_ruby)
A Ruby wrapper for the [Broadband Map APIs](http://broadbandmap.gov/developer).

## Installation
    gem install broadband_map

## Usage Examples
    require 'broadband_map'

    # Provide all the wireless providers within a US census block given a passed latitude and longitude.
    BroadbandMap.wireless(:data_version => 'fall2010', :latitude => '38.0', :longitude => '-77.5')

		# Provide all the wireline providers within a US census block given a passed latitude and longitude.
    BroadbandMap.wireline(:data_version => 'fall2010', :latitude => '38.0', :longitude => '-77.5')

		# Returns rankings within nation by specific geo id
		BroadbandMap.almanac_ranking_geo_id_within_nation({:data_version => 'fall2010', :census_metric_type => 'population', :ranking_metric => 'wirelineproviderequals0', :geography_type => 'county', :geography_id => '01101', :sort_order => 'asc'})

## Contributing
In the spirit of [free software][free-sw], **everyone** is encouraged to help improve
this project.

[free-sw]: http://www.fsf.org/licensing/essays/free-sw.html

Here are some ways *you* can contribute:

* by using alpha, beta, and prerelease versions
* by reporting bugs
* by suggesting new features
* by writing or editing documentation
* by writing specifications
* by writing code (**no patch is too small**: fix typos, add comments, clean up
  inconsistent whitespace)
* by refactoring code
* by fixing [issues][]
* by reviewing patches

[issues]: https://github.com/codeforamerica/broadband_map_ruby/issues

## Submitting an Issue
We use the [GitHub issue tracker][issues] to track bugs and features. Before
submitting a bug report or feature request, check to make sure it hasn't
already been submitted. When submitting a bug report, please include a [Gist][]
that includes a stack trace and any details that may be necessary to reproduce
the bug, including your gem version, Ruby version, and operating system.
Ideally, a bug report should include a pull request with failing specs.

[gist]: https://gist.github.com/

## Submitting a Pull Request
1. [Fork the repository.][fork]
2. [Create a topic branch.][branch]
3. Add specs for your unimplemented feature or bug fix.
4. Run `bundle exec rake spec`. If your specs pass, return to step 3.
5. Implement your feature or bug fix.
6. Run `bundle exec rake spec`. If your specs fail, return to step 5.
7. Run `open coverage/index.html`. If your changes are not completely covered
   by your tests, return to step 3.
8. Add, commit, and push your changes.
9. [Submit a pull request.][pr]

[fork]: http://help.github.com/fork-a-repo/
[branch]: http://learn.github.com/p/branching.html
[pr]: http://help.github.com/send-pull-requests/

## Copyright
Copyright (c) 2010 Code for America. See [LICENSE][] for details.

[license]: https://github.com/codeforamerica/broadband_map_ruby/blob/master/LICENSE.md

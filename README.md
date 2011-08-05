Broadband Map
=======
A Ruby wrapper for the [Broadband Map APIs](http://broadbandmap.gov/developer).

Continuous Integration
----------------------
[![Build Status](https://travis-ci.org/codeforamerica/broadband_map_ruby.png)](http://travis-ci.org/codeforamerica/broadband_map_ruby)


Installation
------------
    gem install broadband_map

Usage Examples
--------------

    require 'broadband_map'

    # Provide all the wireless providers within a US census block given a passed latitude and longitude.
    BroadbandMap.wireless(:data_version => 'fall2010', :latitude => '38.0', :longitude => '-77.5')

		# Provide all the wireline providers within a US census block given a passed latitude and longitude.
    BroadbandMap.wireline(:data_version => 'fall2010', :latitude => '38.0', :longitude => '-77.5')

		# Returns rankings within nation by specific geo id
		BroadbandMap.almanac_ranking_geo_id_within_nation({:data_version => 'fall2010', :census_metric_type => 'population', :ranking_metric => 'wirelineproviderequals0', :geography_type => 'county', :geography_id => '01101', :sort_order => 'asc'})

Contributing
------------
In the spirit of [free software](http://www.fsf.org/licensing/essays/free-sw.html), **everyone** is encouraged to help improve this project.

Here are some ways *you* can contribute:

* by using alpha, beta, and prerelease versions
* by reporting bugs
* by suggesting new features
* by writing or editing documentation
* by writing specifications
* by writing code (**no patch is too small**: fix typos, add comments, clean up inconsistent whitespace)
* by refactoring code
* by resolving [issues](https://github.com/codeforamerica/broadband_map_ruby/issues)
* by reviewing patches

Submitting an Issue
-------------------
We use the [GitHub issue tracker](https://github.com/codeforamerica/broadband_map_ruby/issues) to track bugs and
features. Before submitting a bug report or feature request, check to make sure it hasn't already
been submitted. You can indicate support for an existing issuse by voting it up. When submitting a
bug report, please include a [Gist](https://gist.github.com/) that includes a stack trace and any
details that may be necessary to reproduce the bug, including your gem version, Ruby version, and
operating system. Ideally, a bug report should include a pull request with failing specs.

Submitting a Pull Request
-------------------------
1. Fork the project.
2. Create a topic branch.
3. Implement your feature or bug fix.
4. Add documentation for your feature or bug fix.
5. Run <tt>bundle exec rake doc:yard</tt>. If your changes are not 100% documented, go back to step 4.
6. Add specs for your feature or bug fix.
7. Run <tt>bundle exec rake spec</tt>. If your changes are not 100% covered, go back to step 6.
8. Commit and push your changes.
9. Submit a pull request. Please do not include changes to the gemspec, version, or history file. (If you want to create your own version for some reason, please do so in a separate commit.)

Copyright
---------
Copyright (c) 2010 Code for America Laboratories
See [LICENSE](https://github.com/codeforamerica/broadband_map_ruby/blob/master/LICENSE.md) for details.

[![Code for America Tracker](http://stats.codeforamerica.org/codeforamerica/broadband_map_ruby.png)](http://stats.codeforamerica.org/projects/broadband_map_ruby)

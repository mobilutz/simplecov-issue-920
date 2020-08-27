# SimpleCov issue 920

This is a repo for this corresponding issue: https://github.com/simplecov-ruby/simplecov/issues/920

## Problem

In simplecov 0.19.0 there was a change that `SimpleCov::Report.from_hash` does not return one result, but an array of results.
This broke our coverage merger.

Similar to what steranking found out, I also found that `.resultset.json` NEEDS to have absolute paths:
https://github.com/simplecov-ruby/simplecov/issues/920#issuecomment-679995492

My situation was, that I tested the merger - see `custom-merger.rb` - locally where the absolute paths are different from our CI run.
CI - `/app/app...`, local - `/User/name/app/app...`

Please see more details and communication in the linked ticket above.
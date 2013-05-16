# Ideas

## Automate the creation of a DM2-style RSpec directory structure

use the structure of `lib/` to stub out all the appropriate files/directories.

## Automate Scaffolding new classes properly

Essentially a rails-style generator for arbitrary classes under the `lib/`
directory, such that they follow all appropriate naming conventions, manage the
includer-files (eg, the `lib/foo.rb` which requires all the `lib/foo/*.rb`
files).

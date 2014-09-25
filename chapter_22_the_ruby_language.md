## Chapter 22 - The Ruby Language

22.1 Source File Encoding

* Ruby 2 assumes source is written in UTF-8.
* Ruby 1.9 assumes source is written in 7 bit ASCII.
```ruby
# UTF-8 source
# coding: utf-8

# ISO-8859-1 source
# -*-encoding: iso-8859-1-*-

# ASCII source
#!/usr/bin/ruby
#fileencoding: us-ascii
```

22.2 Source Layout

* Ruby is a line-oriented language.
* Terminated at end of line, unless last token is operator or comma.
* Backslash at end of line can be used to continue it to next line. 
* Semicolons separate expressions on a line. 
* Comments start with #
* Physical lines with line starting =begin and ending =end are ignored by Ruby and may be used comments

```ruby
# All valid

a = 2

b = 2; c = 3

d = 3 +
    4        # no '\' needed

e = 8 + 9 \
    + 3      # '\' needed
```

* Ruby reads program input in a single pass, so programs can be piped to the Ruby interpreter's standard input stream. 

```shell
  $ echo 'puts "Hello"' | ruby
```

* If Ruby comes across _END_ with no leading or trailing whitespaces, it treats line as end of the program. However, the lines can be read by the global IO object DATA.
* BEGIN and END Blocks
* BEGIN blocks run as the file is being loaded, run in order they are encountered0
* END blocks run after the program has finished executing, run in reverse order
* General Delimited Input
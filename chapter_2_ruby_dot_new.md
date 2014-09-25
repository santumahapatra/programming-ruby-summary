## Chapter 2 - Ruby.new

2.1 Ruby is an Object-Oriented Language

* Object Oriented Language
* Every Object has unique Object Identifier (Object ID)
* Song.new - Receiver is 'Song', Method to be invoked is 'new'
* Java - Calling a separate object and calling the number
```java
  Math.abs(num)
```
* Ruby - calling the method on the object itself
```ruby
  num = -1234
  postive = num.abs
```

2.2 Some Basic Ruby

* String Literals - Difference between Single and Double Quotes for Strings
* Instance Variables - @
* Class Variables - @@
* Global Variables - $

2.3 Arrays and Hashes

* Arrays and Hashes are indexed collections.
* With arrays, the key is an integer. 
* More efficient to access arrays. 
* Given array a - a.inspect displays array a
* Creating array of words -
```ruby
  a = [ 'ant', 'bee', 'cat', 'dog', 'elk' ]
  a = %w { ant bee cat dog elk }
```
* Creating a Hash - 
```ruby
  inst_section = {
    'cello' => 'string',
    'clarinet' => 'woodwind',
    'drum' => 'percussion',
    'oboe' => 'woodwind',
    'trumpet' => 'brass',
    'violin' => 'string'
  }

  p inst_section['cello']
```
* Creating a hash with a default value
```ruby
  histogram = Hash.new(0)
  histogram['ruby'] # The default value is zero
  histogram['ruby'] += 1
  histogram['ruby']
```

2.4 Symbols

* Symbols are simply constant names that you don't have to predeclare and that are guaranteed to be unique.
* Frequently used as keys in hashes. 

2.5 Control Structures

* if, elsif, else - end
* while - end
* Statement modifier
```ruby
  puts "Danger" if radiation > 3000
  square = square*square while square < 1000
```

2.6 Regular Expressions

* /pattern/
* /Perl|Python/ - Perl or Python
* /P(erl|ython)/ - is the same
* '+' - one or more
* '*' - zero or more
* \s - whitespace characters - tab, space, newline and so on
* \d - digit
* \w - word
* . - almost any character
* string =~ pattern -> checks for a pattern in a string
* sub - replaces first occurence of the pattern
* gsub - replaces all occurences of the pattern

```ruby
line = gets
newline = line.sub(/Perl/, 'Ruby') # replace first 'Perl' with 'Ruby'
newline = line.gsub(/Python/, 'Ruby') # replace every 'Python' with 'Ruby'
```

2.7 Blocks and Iterators

* Code Blocks - chunks of code that you can associate with method invokations, almost as if they were paramters
* To implement callbacks (simpler than Java's anonymous classes)
* To pass around chunks of code (more flexible than C's function pointers)
* To implement iterators (use throughout the Ruby Library)
```ruby
  # Single Line Code Block
  { puts "Hello" }


  # Multiline Code Block
  do
    company.enroll(programmer)
    programmer.code
  end

  # Example 1
  def call_block
    puts "Stand Up"
    yield
    puts "Lunch"
    yield
    puts "Go Home"
  end

  call_block { puts "Code" }

  #Example 2
  def type_of_language
    yield("Smalltalk", "object oriented")
    yield("Clojure", "functional")
  end

  type_of_language { |language, type| puts "#{language} is a #{type} programming language." }

  #Iterators

  languages = %w( python ruby coffeescript javascript )
  languages.each {|lang| puts lang}

  5.times { puts "HTML, CSS, Bootstrap"}

  2.upto(7) { |level| puts "Level up. Current level in web page styling #{level}. " }

  ('a'..'m').each{ |char| print char}
```

2.8 Reading and 'Riting

* puts - writes arguments with a newline
* print - writes arguments with no newline
* Both the above can be used to write to any I/O object
* By default they write to standard output
* printf - prints arguments under the control of a format string
```ruby
printf("Velocity : %5.2f, \n %s", 2.1, "pomodoros" )
```
* gets - read input into program, returns nil at the end of input

2.9 Command-Line Arguments

* ARGV
* ARGF - passed as a file

```ruby
  puts "And the command line arguments are #{ARGV.size} in number"
  p ARGV
```

Running the File

```shell
  $ ruby cmd_line.rb hello world
```

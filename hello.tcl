####!/usr/bin/tclsh

puts "Hello World!"
puts stdout " --- I AM SECOND PUTS,\n --- Hello world from SECOND PUTS!"


set myVariable "Double Quotes: hello world"; puts $myVariable
set myVariable {Curly Braces: hello world}; puts $myVariable


# LISTS:
puts "\n\nLISTS BEGIN"
set myVariable {red green blue}
puts "  First element on the list: [lindex $myVariable 0]
  Second element on the list: [lindex $myVariable 1]
  Third element on the list: [lindex $myVariable 2]  "
puts "LISTS END\n\n"

# Associative Array:
puts "\n\nASSOCIATE ARRAY BEGIN"
set  marks(english) 80
puts $marks(english)
set  marks(mathematics) 90
puts $marks(mathematics)
puts "ASSOCIATE ARRAY END\n\n"

# VARIABLE NAMING:
puts "\n\nVARIABLE NAMING BEGIN"
set variableA 10
set {variable B} "I AM VARIABLE B"
set "variable C" "I AM VARIABLE C"
puts "Printing \"variableA\": $variableA"
puts "Printing \"variable B\": ${variable B}"
puts "Printing \"variable B\": ${variable C}"
puts "VARIABLE NAMING END\n\n"


# MATH:
puts "\n\nMATH BEGIN"
set a 5
puts $a
puts [expr $a + 1]

set myVariable 10
puts [expr $myVariable + 5 + 10]

set variableA "10"
set result [expr $variableA / 9];
puts "here is 10 / 9: $result"

set result [expr $variableA / 9.0];
puts "here is 10 / 9.0: $result"

set variableA "10.0"
set result [expr $variableA / 9];
puts "here is 10.0 / 9: $result"

set tcl_precision 5
set variableA "10"
set result [expr $variableA / 9];
puts "here is 10 / 9.0: $result"

set a 21
set b 10
set c [expr $a + $b]
puts "Line 1 - Value of c is $c\n"
set c [expr $a - $b]
puts "Line 2 - Value of c is $c\n"
set c [expr $a * $b]
puts "Line 3 - Value of c is $c\n"
set c [expr $a / $b]
puts "Line 4 - Value of c is $c\n"
set c [expr $a % $b]
puts "Line 5 - Value of c is $c\n"
puts "MATH END\n\n"


# LOGICAL OPERATORS:
puts "\n\nLOGICAL OPERATORS"
set a  5
set b 20

if { $a && $b } {
   puts "Line 1 - Condition is true\n"
}
if { $a || $b } {
   puts "Line 2 - Condition is true\n"
}
# lets change the value of  a and b 
set a  0
set b 10
if { $a && $b } {
   puts "Line 3 - Condition is true\n"
} else {
   puts "Line 3 - Condition is not true\n" 
}
if { !($a && $b) } {
   puts "Line 4 - Condition is true\n" 
}
puts "LOGICAL OPERATORS\n\n"


# BITWISE OPERATORS:
puts "\n\nBITWISE OPERATORS"
set a 60  ;# 60 = 0011 1100   
set b 13  ;# 13 = 0000 1101 

set c [expr $a & $b] ;# 12 = 0000 1100 
puts "Line 1 - Value of c is $c\n"

set c [expr $a | $b;] ;# 61 = 0011 1101 
puts "Line 2 - Value of c is $c\n"

set c [expr $a ^ $b;] ;# 49 = 0011 0001 
puts "Line 3 - Value of c is $c\n"

set c [expr $a << 2] ;# 240 = 1111 0000 
puts "Line 4 - Value of c is $c\n"

set c [expr $a >> 2] ;# 15 = 0000 1111 
puts "Line 5 - Value of c is $c\n"
puts "BITWISE OPERATORS\n\n"



# TERNARY OPERATORS:
puts "\n\TERNARY OPERATORS BEGIN"
set a 10;
set b [expr $a == 1 ? 20: 30]
puts "Value of b is $b\n"
set b [expr $a == 10 ? 20: 30]
puts "Value of b is $b\n"
puts "TERNARY OPERATORS END\n\n"

# LOOP CONTROL:
puts "\n\LOOP CONTROL: BEGIN"
set a 0

puts "\nWHILE loop"
while { $a <= 3 } {
   puts "value of a: $a"
   incr a
}

puts "\nFOR loop"
# for { set a 0}  {$a < 5} {set a [expr $a + 1 ]} {
for { set a 0}  {$a < 5} {incr a} {
   puts "value of a: $a"
}

puts "\nBREAK statement"
# while loop execution 
set a 0
while {$a < 20 } {
   puts "value of a: $a"
   incr a
   if { $a > 2} {
      # terminate the loop using break statement 
	  puts "\n\$a = $a; BREAKing out"
      break
   }
}

puts "\nCONTINUE statement"
set a 10
# do loop execution 
while { $a < 15 } {
   if { $a == 12} {
      #skip the iteration 
	  puts "\$a = $a; CONTINUEing thru"
      incr a
      continue
   }
   puts "value of a: $a"
   incr a     
}

puts "LOOP CONTROL END\n\n"




# ARRAYS:
puts "\nARRAYS: BEGIN"
set languages(0) Tcl
set languages(1) "C Language"
for { set index 0 }  { $index < [array size languages] }  { incr index } {
  puts "languages($index) : $languages($index)"
}

set personA(Name) "Dave"
set personA(Age) 14
foreach index [array names personA] {
  puts "personA($index): $personA($index)"
}
puts "ARRAYS END\n\n"




# STRINGS:
puts "\nSTRINGS: BEGIN"

set s1 "Hello World"
set s2 "o"
puts "First occurrence of $s2 in \"$s1\": [string first $s2 $s1]"
puts "Character at index 0 in \"$s1\": [string index $s1 0]"
puts "Last occurrence of $s2 in \"$s1\": puts [string last $s2 $s1]"
puts "Word end index in \"$s1\": [string wordend $s1 20]"
puts "Word start index in \"$s1\": [string wordstart $s1 20]"


set s1 "Hello World"
puts "Length of string \"$s1\": [string length $s1]"
 
set s1 "Hello World"
puts "Uppercase string of s1: [string toupper $s1]"
puts "Lowercase string of s1: [string tolower $s1] " 

set s1 "Hello World"
set s2 "World"
puts "Trim right $s2 in $s1: [string trimright $s1 $s2]"

set s2 "Hello"
puts "Trim left $s2 in $s1: [string trimleft $s1 $s2]"

set s1 "Hey You Hello World Hi there"
set s2 "Hello World"
puts "Trim characters $s1 on both sides of $s2: [string trim $s1 $s2]"

set s1 "test@test.com" 
set s2 "*@*.com"
puts "Does \"$s1\" contain \"$s2\": [string match $s2 $s1 ]"
puts "Does \"$s1\" contain \"tcl\": [string match {tcl} $s1]"


puts [format "%f" 43.5]
puts [format "%e" 43.5]
puts [format "%d %s" 4 tuts]
puts [format "%s" "Tcl Language"]
puts [format "%x" 40]

# reg expressions like behavior:
puts [scan "90" {%[0-9]} m]
puts [scan "abc" {%[a-z]} m]
puts [scan "abc" {%[A-Z]} m]
puts [scan "ABC" {%[A-Z]} m]

puts "STRINGS END\n\n"




# LISTs (lists are represented as strings completely and processed to form individual items
#        when required. So, avoid large lists and in such cases; use array):
puts "\nLISTs: BEGIN"

set colorList1_string {red green blue}
set colorList2_list [list red green blue]
set colorList3_split [split "red_green_blue" _]
puts "colorList1_string: $colorList1_string"
puts "colorList2_list: $colorList2_list"
puts "colorList3_split: $colorList3_split"


set var item0
append var " " "item1"
lappend var "item2" 
lappend var "item3" 
puts $var
puts "The length of var: [llength $var]"
puts "Select the first item from the list: [lindex $var  1]"
puts "Select the first item from the list: [lindex $var  2]"

set var [linsert  $var 3 n_item0 n_item1]
puts "After inserting new items: $var"

set var [lreplace $var 3 4 r_item_0 r_item1]
puts "After replacing new items: $var"

lset var 4 s_item0
puts "After replacing new items: $var"

lassign $var color1 color2
puts "color1: $color1; color2: $color2"

lassign "[lindex $var 1] [lindex $var  2]" color1 color2
puts "color1: $color1; color2: $color2"

puts "sorted \$var [lsort $var]"

puts "LISTs END\n\n"



# DICTIONARIES (useful for vlog and vcom):
puts "\nDICTIONARYs: BEGIN"

dict set colors color1 blue color2 green
puts $colors

set colors [dict create key0 "black" key1 "white"]
puts $colors

puts "the \$colors dictionary has size: [dict size $colors]"

puts "All keys: [dict keys $colors]"
puts "All values: [dict values $colors]"
puts "Does this key exist in the dictionary (1-yes;0-no): [dict exists $colors key1]"

#Get keys and corresponding values per each key:
foreach key [dict keys $colors] {
   set value [dict get $colors $key]
   puts "iterating and printing \$key: $key\ 
                                \$value: $value"
}

puts "LISTs END\n\n"


#PROCEDURES:
puts "\nPROCEDUREs: BEGIN"

proc helloWorld1 {} { 
  puts "helloWorld1: Hello, World!" 
}
helloWorld1


proc add {a b} {
   return [expr $a+$b] }
puts [add 10 30]

proc avg {numbers} {
   set sum 0
   foreach number $numbers {
      set sum  [expr $sum + $number]
   }
   set average [expr $sum/[llength $numbers]]
   return $average
}
puts "avg of 70 80 50 60: [avg {70 80 50 60}]"
puts "avg of 70 80 50: [avg {70 80 50 }]"

proc add {a {b 100} } {
   return [expr $a+$b]
}
puts "add 100 300: [add 100 300]"
puts "add 50 (procedure with default arguments): [add 50]"

proc factorial {number} {
   if {$number <= 1} {
      return 1
   } 
   return [expr $number * [factorial [expr $number - 1]]]
}
puts "Recursive procedure to calculate factorial of 3: [factorial 3]"
puts "Recursive procedure to calculate factorial of 5: [factorial 5]"

puts "PROCEDUREs END\n\n"



#PACKAGES:
puts "\nPACKAGEs: BEGIN"

pkg_mkIndex . helloPackage.tcl
pwd
lappend auto_path "C:/Users/e313837"
package require helloPackage 1.0
puts [helloPackage::MyProcedure]

puts "PACKAGEs END\n\n"



#NAMESPACE:
puts "\nNAMESPACE: BEGIN"

namespace eval MyMath {
   # Create a variable inside the namespace
   variable myResult
}
namespace eval extendedMath {
   # Create a variable inside the namespace
   namespace eval MyMath {
      # Create a variable inside the namespace
      variable myResult
   }
}
set ::MyMath::myResult "test1"
puts $::MyMath::myResult
set ::extendedMath::MyMath::myResult "test2"
puts $::extendedMath::MyMath::myResult

namespace eval MyMath {
   # Create a variable inside the namespace
   variable myResult
   namespace export Add
}
# Create procedures inside the namespace
proc MyMath::Add {a b } {  
   return [expr $a + $b]
}
namespace import MyMath::*
puts [Add 10 30]

namespace forget MyMath::*

puts "NAMESPACE END\n\n"



#FILE_IO:
puts "\nFILE_IO: BEGIN"

set fd [open "tcl_io.log" w+]
puts $fd "hellow world!"
close $fd

set fd [open "tcl_io.log" a+]
puts $fd "hello world again!"
close $fd

set fd [open "tcl_io.log" r]
set file_data [read $fd]
puts $file_data
close $fd

set fd [open "tcl_io.log" r]
while { [gets $fd data] >= 0 } {
   puts "line by line: $data"
}
close $fd

set files {}
set fd [open "lib1.txt" r]
while { [gets $fd data] >= 0 } {
   puts "line by line: $data"
   lappend files "$data"
   puts "files: $files"
   puts "number of files: [llength $files]"
}
close $fd
for { set index 0 }  { $index < [llength $files] }  { incr index } {
  puts "file $index : [lindex $files $index]"
}

puts "FILE_IO END\n\n"



#EVAL:
puts "\nEVAL: BEGIN"

# Best to worst working methods:

set cmd_var1 {puts "BEST: hello using eval 1"}
eval $cmd_var1

set cmd_var2 {puts {BETTER: hello using eval 2}}
eval $cmd_var2

set cmd_var3 "puts {GOOD: hello using eval 3}"
eval $cmd_var3

set cmd_var4 "puts \"BAD: hello using eval 4\""
eval $cmd_var4

puts "EVAL END\n\n"












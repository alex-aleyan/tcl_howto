# /Users/rajkumar/Desktop/helloPackage/helloPackage.tcl 
# Create the namespace
namespace eval ::helloPackage {
 
  # Export MyProcedure
  namespace export MyProcedure
 
  # My Variables
   set version 1.0
   set MyDescription "Hello Package!!!"
 
  # Variable for the path of the script
   variable home [file join [pwd] [file dirname [info script]]]
 
}
 
# Definition of the procedure MyProcedure
proc ::helloPackage::MyProcedure {} {
   puts $helloPackage::MyDescription
}

package provide helloPackage $helloPackage::version
package require Tcl 8.0
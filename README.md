# bats demo project

This project contains demo data for the brown bag talk about
keeping your sanity when programming in bash.

The aim is to demonstrate the usefulness of unit tests even in
short projects involving bash scripting.

There are two cases to demonstrate

1. A utility library involving some file and text manipulation
   The *useful.sh* utility library contains a function to create a text file
   and add some subject to the file.
   Furthermore it contains a function to fix subjects which are not
   well-formed to some set of rules.

2. A library using some application to create a deployment
   The *deploy-something.sh* libary contains a function to create a
   very expensive deployment which nonetheless (or better for this very
   reason) needs to be tested.
   
See the `feature/add-unit-tests` branch for a version containing bats tests.

## The story
I'm the founder of a small startup "Fine subjects, inc." which will
create the next big thing in the internet scene.
I raised 1.000.000 € of venture capital and we're going live shortly.

The idea - as all good ideas - is exceedingly simple.

*We allow the customer to create a subject and then deploy it to our 
production cluster.*

The production cluster has been in pre-production for quite some time now
and is has proved to be very reliable.

Now the software suite controlling the thing has to be finished.

There is a little twist, though:
A single deployment to the production cluster costs 500.000€, so we
have to make sure that all goes well the very first time.

But I have no worries - my systems engineers - very experienced Linux hackers - ensure me
that they have everything under control.
Their system of bash scripts is bullet proof, so I'm going to do my 
a little test myself ...
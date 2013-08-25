grunk
=====

Grunk is a tool for Splunk which has enables you to query a Splunk server from the command line using only the REST API. You do not need to have any of the Splunk binaries installed on your machine.

Installation
------------

Requires Ruby and rubygems. Once you have those;

    gem install grunk

Configuration
-------------

Grunk expects a configuration file in your home directory called .splunkrc which follows the same format as the splunk-sdk-ruby .splunkrc file

It should look something like;

    {
      :username => '<username>', 
      :password => '<password>',
      :port => '<management port>',
      :host => '<host>',
      :protocol => '<https or http>'
    }


Usage
-----

    grunk <options> <splunk search query>

Grunk can accept various options

 - -e <splunk time> 
   A splunk style time indicating the earliest time of the search

 - -l <splunk time>
   A splunk style time indicating the latest time of the search

 - -d 
   Display the log timestamp next to each result

 - -o 
   Display the host field next to each result

 - -s
   Display the source field next to each result

Example
-------

    grunk -o 'error OR 404'

Realtime queries work too (you can use grunk like tail -f):

    grunk 'host=somehost sourcetype=mainlog' -e rt-10s -f rt

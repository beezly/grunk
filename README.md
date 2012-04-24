grunk
=====

Grunk is a tool for Splunk which has enables you to query a Splunk server from the command line using only the REST API. You do not need to have any of the Splunk binaries installed on your machine.

Configuration
-------------

Grunk expects a configuration file in your home directory called .grunkrc

It should consist of three lines;

    splunk_server: https://<your-splunk-server>:8089/services
    splunk_user: <your splunk username>
    splunk_pass: <your splunk password>

Usage
-----

    grunk <options> <splunk search query>

Grunk can accept various options

 - -f <splunk time> 
   A splunk style time indicating the earliest time of the search

 - -t <splunk time>
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

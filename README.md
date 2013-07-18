Rails-api micro-framework + Grape endpoint 
===
[![Code Climate](https://codeclimate.com/github/lgs/grape-on-rails-api.png)](https://codeclimate.com/github/lgs/grape-on-rails-api)

based on Rails 4.0.0.beta1
see working example deploied on Heroku [http://apirizer.herokuapp.com/v1/categories](http://apirizer.herokuapp.com/v1/categories) 

<pre>
lsoave@ubuntu:~$ ab -n 100 -c 100 http://apirizer.herokuapp.com/v1/categories
This is ApacheBench, Version 2.3 
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking apirizer.herokuapp.com (be patient).....done


Server Software:        WEBrick/1.3.1
Server Hostname:        apirizer.herokuapp.com
Server Port:            80

Document Path:          /v1/categories
Document Length:        5123 bytes

Concurrency Level:      100
Time taken for tests:   3.928 seconds
Complete requests:      100
Failed requests:        0
Write errors:           0
Total transferred:      546600 bytes
HTML transferred:       512300 bytes
Requests per second:    25.46 [#/sec] (mean)
Time per request:       3927.549 [ms] (mean)
Time per request:       39.275 [ms] (mean, across all concurrent requests)
Transfer rate:          135.91 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:       52  600 611.9    211    1604
Processing:   325  935 452.8    852    2842
Waiting:      320  893 422.5    825    1943
Total:        494 1535 897.4   1096    3926

Percentage of the requests served within a certain time (ms)
  50%   1096
  66%   2027
  75%   2554
  80%   2621
  90%   2940
  95%   3040
  98%   3123
  99%   3926
 100%   3926 (longest request)
lsoave@ubuntu:~$  
</pre>

This document cover whatever steps are necessary to get the application up and running.
---

* Ruby version 
  ruby-2.0.0-p0

* System dependencies
  Rails (4.0.0.beta1)
  rails-api (0.0.3)
  grape (0.3.1)
  mongoid (4.0.0)
      activemodel (~> 4.0.0.beta)
      moped (~> 1.4.2)
      origin (~> 1.0)
      tzinfo (~> 0.3.22)

* Configuration set 
  set config/initializers/secret_token.rb

* Database creation
  have MongoDB > 2.2.2 running 

* Database initialization
  mongorestore -h localhost -d db_name -u user -p password --dbpath  ./apirizer_dev
  or
  mongoimport categories.json

Copyright
---------

Copyright (c) 2013 Luca G. Soave. 

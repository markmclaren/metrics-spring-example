# metrics-spring-example

A simple example Java web application using [Coda Hale's metrics library](https://github.com/dropwizard/metrics) and [Ryan Tenney's metrics-spring library](https://github.com/ryantenney/metrics-spring).

This project is deliberately simple.  It uses Spring XML configuration.  It was created as a getting started example of how to configure metrics with metrics-spring.

It uses the following metrics related libraries:

* metrics-servlet - instrumented servlet filter which collects HTTP responses
* metrics-servlets - a collection of admin servlets
* metrics-annotation - allows Java methods to be annotated with guages, counters, timers and meters.
* metrics-jvm - a selection of gauges and meters to monitor the JVM
* metrics-spring - Ryan Tenney's library providing support for configuring metrics with Spring.

It contains a single Spring MVC controller.  Each web request handler method (slow, fast, random) is annotated with metric's *@Timer* annotation.

In order to make further sense of the JSON reports this project also uses [benbertola's metrics-watcher](https://github.com/benbertola/metrics-watcher).

To invoke it, run:

`mvn tomcat7:run`

and visit:

[http://localhost:8080/metrics-spring-example](http://localhost:8080/metrics-spring-example)






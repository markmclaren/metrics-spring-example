<%@page contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
    <!-- must include bootstrap -->
    <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>

    <title>Metrics Spring Example</title>
  </head>
  <body>
    <nav class="navbar navbar-inverse" role="navigation">
      <div class="container"></div>
    </nav>
    <div class="container mainContent">
      <div class="row">
        <div class="col-lg-12">
          <h1>Metrics Spring Example</h1>
          <ul>
            <li><a href="fast">fast</a> - reload this page but take half a second</li>
            <li><a href="slow">slow</a> - reload this page but take 2 seconds</li>
            <li><a href="random">random</a> - reload this page but take somewhere random time up to 5 seconds</li>
            <li><a href="metrics" target="_blank">metrics</a> - visit the metrics admin servlet</li>
            <li><a href="metrics-watcher/metrics-watcher.html" target="_blank">metrics watcher</a> - look at some graphs, as if raw JSON isn't exciting enough</li>
          </ul>
        </div>
      </div>
    </div>
  </body>
</html>

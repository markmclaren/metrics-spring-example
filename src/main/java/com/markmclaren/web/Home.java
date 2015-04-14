package com.markmclaren.web;

import java.util.Random;

import com.codahale.metrics.annotation.Timed;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Home {

  @RequestMapping("/home")
  public String home() {
    return "home";
  }


  @RequestMapping("/fast")
  @Timed
  public String fast() {
    // wait half a second
    pause(500);
    return "home";
  }

  @RequestMapping("/slow")
  @Timed
  public String slow() {
    // wait two seconds
    pause(2000);
    return "home";
  }

  @RequestMapping("/random")
  @Timed
  public String random() {
    // wait some time between 0 and 5 seconds
    Random rand = new Random();
    int randomNum = rand.nextInt(5001);
    pause(randomNum);
    return "home";
  }


  private static void pause(long milliseconds) {
    long target = System.currentTimeMillis() + milliseconds;
    {
      while (System.currentTimeMillis() < target) {
        // loop
      }
    }
  }

}

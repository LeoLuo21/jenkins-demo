package demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author leo
 * @date 20220729 00:39:25
 */
@RestController
public class OneController {
    @GetMapping("/")
    public String info() {
        return "You see me.";
    }
    @GetMapping("/hello")
    public String hello() {
        return "Hello,World";
    }
    @GetMapping("/test")
    public String test() {
        return "Success";
    }
}

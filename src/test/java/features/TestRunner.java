package features;

import com.intuit.karate.junit5.Karate;

public class TestRunner {
    @Karate.Test
    Karate getToken(){
        return Karate.run("generate_token").relativeTo(getClass());
    }

    @Karate.Test
    Karate createBooking(){
        return Karate.run("create_booking").relativeTo(getClass());
    }

    @Karate.Test
    Karate getBooking(){
        return Karate.run("get_booking").relativeTo(getClass());
    }

    @Karate.Test
    Karate updateBooking(){
        return Karate.run("updatebooking").relativeTo(getClass());
    }
}

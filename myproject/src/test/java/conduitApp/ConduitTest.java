package conduitApp;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class ConduitTest {

    @Test
    void testParallel() {
        Results results = Runner.path("classpath:conduitApp")
                .tags("~@ignore")
                //.outputCucumberJson(true)
                .parallel(1);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}

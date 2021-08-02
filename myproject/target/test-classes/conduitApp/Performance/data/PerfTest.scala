package Performance

import com.intuit.karate.gatling.PreDef._
import io.gatling.core.Predef._
import scala.concurrent.duration._

class PerfTest extends Simulation {
val protocol= karateProtocol()
//  protocol.nameResolver = (req, ctx) => req.getHeader("karate-name")

  val getUsers = scenario("Get Users").exec(karateFeature("classpath:conduitApp/Performance/getUsers.feature"))
  setUp(
    getUsers.inject(
        atOnceUsers(5)
        ).protocols(protocol)
   
  )

}

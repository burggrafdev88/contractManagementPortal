package contractmanagementportal

import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import org.springframework.scheduling.annotation.Scheduled

@Slf4j
@CompileStatic
class DailyEmailJobService {

    static lazyInit = false

    EmailService emailService

    @Scheduled(cron = "*/2 * * * *")
    void execute() {
        emailService.send('burggrafdev88@gmail.com', 'Test Message')
    }
}

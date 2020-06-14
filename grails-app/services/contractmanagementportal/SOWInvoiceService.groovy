package contractmanagementportal

import grails.gorm.transactions.Transactional

@Transactional
class SOWInvoiceService {

    def serviceMethod() {

    }

    @Transactional
    def saveSOWInvoice(SOWInvoice sowInvoiceInstance){
        println 'I made it to the saveSOWInvoice service.'

        if(sowInvoiceInstance.save(flush: true)){
            println 'sowInvoice saved'
        } else{
            println 'sowInvoice not saved'
        }
    }
}

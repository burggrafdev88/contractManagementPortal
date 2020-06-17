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

    @Transactional
    def deleteSOWInvoice(SOWInvoice sowInvoiceInstance){
        println 'I made it to the deleteSOWInvoice service'

        /*What does .delete return? Logic here seems backwards so I inserted a ! */
        if(!sowInvoiceInstance.delete(flush: true)){
            println 'sowInvoiceInstance deleted'
        } else{
            println 'sowInvoiceInstance not deleted'
        }
    }

}

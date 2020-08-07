package contractmanagementportal

import grails.gorm.transactions.Transactional

@Transactional
class TermsAndConditionsInvoiceService {

    def serviceMethod() {

    }

    @Transactional
    def saveTermsAndConditionsInvoice(TermsAndConditionsInvoice termsAndConditionsInvoiceInstance){
        println 'I made it to the saveTermsAndConditionsInvoice service.'

        if(termsAndConditionsInvoiceInstance.save(flush: true)){
            println 'T&C invoice saved'
        } else{
            println 'T&C invoice not saved'
        }
    }

    @Transactional
    def deleteTermsAndConditionsInvoice(TermsAndConditionsInvoice termsAndConditionsInvoiceInstance){
        println 'I made it to the deleteTermsAndConditionsInvoice service'

        /*What does .delete return? Logic here seems backwards so I inserted a ! */
        if(!termsAndConditionsInvoiceInstance.delete(flush: true)){
            println 'termsAndConditionsInvoiceInstance deleted'
        } else{
            println 'termsAndConditionsInvoiceInstance not deleted'
        }
    }
}

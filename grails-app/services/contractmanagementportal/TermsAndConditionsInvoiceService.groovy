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
}

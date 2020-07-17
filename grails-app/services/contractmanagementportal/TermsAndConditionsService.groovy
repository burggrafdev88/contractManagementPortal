package contractmanagementportal

import grails.gorm.transactions.Transactional

@Transactional
class TermsAndConditionsService {

    def serviceMethod() {

    }

    @Transactional
    def saveTermsAndConditions(TermsAndConditions termsAndConditionsInstance){
        println 'I made it to the saveTermsAndConditions service.'

        if(termsAndConditionsInstance.save(flush: true)){
            println 'T&C saved'
        } else{
            println 'T&C not saved'
        }
    }

    def deleteTermsAndConditions(TermsAndConditions termsAndConditionsInstance){
        println 'I made it to the deleteTermsAndConditions service.'

        if(termsAndConditionsInstance.delete(flush: true)){
            println 'T&C deleted'
        } else{
            println 'T&C not deleted'
        }
    }
}

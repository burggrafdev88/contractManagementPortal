package contractmanagementportal

import grails.gorm.transactions.Transactional

@Transactional
class MasterAgreementService {

    def serviceMethod() {

    }

    @Transactional
    def saveMasterAgreement(MasterAgreement masterAgreementInstance){
        println 'I made it to the saveMasterAgreement service.'

        if(masterAgreementInstance.save(flush: true)){
            println 'Master Agreement saved'
        } else{
            println 'Master Agreement not saved'
        }
    }

    @Transactional
    def deleteMasterAgreement(MasterAgreement masterAgreementInstance){
        print 'I made it the deleteMasterAgreement service.'

        /*What does .delete return? Logic here seems backwards so I inserted a ! */
        if(!masterAgreementInstanceInstance.delete(flush: true)){
            println 'Master Agreement deleted'
        } else{
            println 'Master Agreement not deleted'
        }
    }

}

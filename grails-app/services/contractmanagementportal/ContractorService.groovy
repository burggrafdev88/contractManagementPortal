package contractmanagementportal

import grails.gorm.transactions.Transactional

@Transactional
class ContractorService {

    def serviceMethod() {

    }

    @Transactional
    def saveContractor(Contractor contractorInstance){
        println 'I made it to the saveContractor service.'

        if(contractorInstance.save(flush: true)){
            println 'Contractor saved'
        } else{
            println 'Contractor not saved'
        }
    }

    @Transactional
    def deleteContractor(Contractor contractorInstance){
        println 'I made it to the deleteContractor service.'

        /*What does .delete return? Logic here seems backwards so I inserted a ! */
        if(!contractorInstance.delete(flush: true)){
            println 'Contractor deleted'
        } else{
            println 'Contractor not deleted'
        }
    }

}

package contractmanagementportal

import grails.gorm.transactions.Transactional

@Transactional
class ContractService {

    def serviceMethod() {

    }

    @Transactional
    def saveContract(Contract contractInstance){
        println 'I made it to the saveContract service.'

        if(contractInstance.save(flush: true)){
            println 'Contract saved'
        } else{
            println 'Contract not saved'
        }
    }

    @Transactional
    def deleteContract(Contract contractInstance){
        println 'I made it to the deleteContract service.'

        /*What does .delete return? Logic here seems backwards so I inserted a ! */
        if(!contractInstance.delete(flush: true)){
            println 'Contract deleted'
        } else{
            println 'Contract not deleted'
        }
    }
}

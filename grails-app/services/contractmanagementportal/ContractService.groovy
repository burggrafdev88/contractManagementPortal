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
}

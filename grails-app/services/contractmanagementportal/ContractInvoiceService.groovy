package contractmanagementportal

import grails.gorm.transactions.Transactional

@Transactional
class ContractInvoiceService {

    def serviceMethod() {

    }

    @Transactional
    def saveContractInvoice(ContractInvoice contractInvoiceInstance){
        println 'I made it to the saveContractInvoice service.'

        if(contractInvoiceInstance.save(flush: true)){
            println 'Contract invoice saved'
        } else{
            println 'Contract invoice not saved'
        }
    }

    @Transactional
    def deleteContractInvoice(ContractInvoice contractInvoiceInstance){
        println 'I made it to the deleteContractInvoice service'

        /*What does .delete return? Logic here seems backwards so I inserted a ! */
        if(!contractInvoiceInstance.delete(flush: true)){
            println 'contractInvoiceInstance deleted'
        } else{
            println 'contractInvoiceInstance not deleted'
        }
    }
}

package contractmanagementportal

import grails.gorm.transactions.Transactional

@Transactional
class SOWService {

    def serviceMethod() {

    }

    def saveSOW(SOW sowInstance){
        println 'I made it to the saveSOW service.'

        if(sowInstance.save(flush: true)){
            println 'SOW saved'
        } else{
            println 'SOW not saved'
        }
    }

    @Transactional
    def deleteSOW(SOW sowInstance){
        println 'I made it the deleteSOW service.'

        /*What does .delete return? Logic here seems backwards so I inserted a ! */
        if(!sowInstance.delete(flush: true)){
            println 'SOW deleted'
        } else{
            println 'SOW not deleted'
        }
    }
}

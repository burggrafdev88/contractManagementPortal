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
}

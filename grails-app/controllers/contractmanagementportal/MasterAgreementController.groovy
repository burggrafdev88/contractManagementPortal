package contractmanagementportal

class MasterAgreementController {
    def masterAgreementService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        println 'I made it to index for Master Agreements'
        def masterAgreementList = MasterAgreement.list(sort: "office", order: "asc")

        render(view: "index", model: [m: masterAgreementList])
    }

    def create(){
        println 'I made it to create for Master Agreements.'
    }

    def save(){
        println 'I made it to save for Master Agreements'
        def masterAgreementInstance = new MasterAgreement(params)
        masterAgreementService.saveMasterAgreement(masterAgreementInstance)

        redirect(action: "index")
    }

    def edit(Long id){
        println 'I made it to edit for Master Agreements'
        def masterAgreementInstance = MasterAgreement.get(id)

        render(view: "edit", model: [masterAgreement: masterAgreementInstance])
    }

    def update(Long id){
        println("I made it to update for Master Agreements")
        def masterAgreementInstance = MasterAgreement.get(id)
        masterAgreementInstance.properties = params
        masterAgreementService.saveMasterAgreement(masterAgreementInstance)

        redirect(action: "show", id: masterAgreementInstance.id)
    }

    def show(Long id){
        println 'I made it to show for Master Agreement.'
        def masterAgreementInstance = MasterAgreement.get(id)
        def sowList = masterAgreementInstance.getSows()
        println sowList

        render(view: "show", model: [masterAgreement: masterAgreementInstance, sow: sowList])
    }

    def delete(Long id){
        println 'I made it to delete for Master Agreement.'
        def masterAgreementInstance = MasterAgreement.get(id)
        masterAgreementService.deleteMasterAgreement(masterAgreementInstance)

        render(action: "index")
//        redirect(action: "index")
    }

}

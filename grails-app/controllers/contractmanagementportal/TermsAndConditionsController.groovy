package contractmanagementportal

class TermsAndConditionsController {
    def termsAndConditionsService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        println 'I made it to index for Terms and Conditions'
        def termsAndConditionsList = TermsAndConditions.list(sort: "office", order: "asc")

        render(view: "index", model: [t: termsAndConditionsList])
    }

    def create(){
        println 'I made it to create for Terms and Conditions.'
        def contractorList = Contractor.getAll()
        def officeList = Office.getAll()
        def bidTypeList = BidTypeTermsAndConditions.getAll()

        render(view: "create", model: [contractorList: contractorList, officeList: officeList, bidTypeList: bidTypeList])
    }

    def save(){
        println 'I made it to save for Terms and Conditions'
        def termsAndConditionsInstance = new TermsAndConditions(params)

        termsAndConditionsService.saveTermsAndConditions(termsAndConditionsInstance)
        redirect(action: "index")
    }

    def edit(Long id){
        println 'I made it to edit for T&C'
        def termsAndConditionsInstance = TermsAndConditions.get(id)
        def contractorList = Contractor.getAll()
        def officeList = Office.getAll()
        def bidTypeList = BidTypeTermsAndConditions.getAll()

        render(view: "edit", model: [termsAndConditions: termsAndConditionsInstance, contractorList: contractorList, officeList: officeList, bidTypeList: bidTypeList])
    }

    def update(Long id){
        println("I made it to update for T&C")
        def termsAndConditionsInstance = TermsAndConditions.get(id)
        termsAndConditionsInstance.properties = params
        termsAndConditionsService.saveTermsAndConditions(termsAndConditionsInstance)

        redirect(action: "show", id: termsAndConditionsInstance.id)
    }

    def show(Long id){
        println 'I made it to show for Terms and Conditions.'
        def termsAndConditionsInstance = TermsAndConditions.get(id)
//        def sowList = masterAgreementInstance.getSows()
//        println sowList.sum()
//        println sowList

        render(view: "show", model: [termsAndConditions: termsAndConditionsInstance])
    }

    def delete(Long id){
        println 'I made it to delete for Terms and Conditions.'
        def termsAndConditionsInstance = TermsAndConditions.get(id)
        termsAndConditionsService.deleteTermsAndConditions(termsAndConditionsInstance)

        render(action: "index")
    }
}

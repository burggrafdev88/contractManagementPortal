package contractmanagementportal

class ContractController {
    def contractService

    def index(){
        println 'I made it to index for Contracts.'
        def contractList = Contract.list(sort: "office", order: "asc")

        render(view: "index", model: [c: contractList])
    }

    def create(){
        println 'I made it to create for Contracts.'
        def contractorList = Contractor.getAll()
        def officeList = Office.getAll()
        def bidTypeList = BidTypeContract.getAll()

        render(view: "create", model: [contractorList: contractorList, officeList: officeList, bidTypeList: bidTypeList])
    }

    def save(){
        println 'I made it to save for Contracts.'

        def contractInstance = new Contract(params)
        contractService.saveContract(contractInstance)

        render 'saved'
    }

    def show(Long id){
        println 'I made it to show for Contracts.'

        def contractInstance = Contract.get(id)
        def invList = contractInstance.getContractInvoices()
        println invList

        render(view: "show", model: [contract: contractInstance, invList: invList])
    }

}

package contractmanagementportal

class PaymentTypeController {

    def index() {

    }

    def list(){
        def list = PaymentType.list()
        return list
    }

}

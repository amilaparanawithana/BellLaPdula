package uom.msc.spd

import grails.transaction.Transactional

@Transactional
class UserService {

    def serviceMethod() {

    }

    @Transactional(readOnly = false)
    def login(Map params){
        def user = User.findByUsername((String)params.username)
        if(((String)params.password).equals(user.password)){
            user
        } else {
            null
        }

    }
}

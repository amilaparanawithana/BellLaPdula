package uom.msc.spd

class UserController {

    def userService

    def index() {
        println "index"
    }

    def login(){
        println "came to login"
        render(view: "login")
    }

    def doLogin(){
      def user = userService.login(params)
        if (user){
            session.user = user
            render(view: "dashboard")
        }
    }


}

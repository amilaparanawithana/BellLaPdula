package uom.msc.spd

class SecurityFilters {

    static nonAuthenticatedActions = [
            [controller: 'user', action: 'login'],
            [controller: 'user', action: 'doLogin']
    ]

    static actionPermissions = [
            [controller: 'bank', action: 'givePromotions', securityLevel:'top_secret', priority:5],
            [controller: 'bank', action: 'viewFinancialInfo', securityLevel:'secret', priority: 4],
            [controller: 'bank', action: 'viewCustomer', securityLevel:'confidential',priority: 3],
            [controller: 'bank', action: 'doRecruitement', securityLevel:'restricted',priority: 2],
            [controller: 'bank', action: 'viewPublicNotices', securityLevel:'unclassified',priority: 1]
    ]

    Map<String,Integer> secLevelMap = ['top_secret':5,'secret':4,'confidential':3,'restricted':2,'unclassified':1]

    def filters = {
        all(controller:'*', action:'*') {
            before = {
                println "came to action"
                def needsAuth = !nonAuthenticatedActions.find {
                    (it.controller == controllerName) &&
                            ((it.action == '*') || (it.action == actionName))
                }

                if (needsAuth) {
                        println "came to access controller "+session.user.username
                    def actionSecurityLevel = actionPermissions.find{ (it.controller == controllerName) && (it.action == actionName) }.priority
                    def userlevel = secLevelMap.get(session.user.currentSecurityLevel)

                    if(userlevel>=actionSecurityLevel){
                        return true
                    } else if (secLevelMap.get(session.user.maxSecurityLevel)>=actionSecurityLevel){
                        return true
                    } else{
                        flash.propogateError = 1
                        flash.message = "ERROR: you don't have permission to access this page"
                        flash.message_header = "Permission Denied"
                        flash.message_class = AlertType.PERMISSION
                        flash.authFailed = true
                    }
                }


            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}

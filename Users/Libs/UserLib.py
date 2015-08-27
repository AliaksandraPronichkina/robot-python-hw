__author__ = 'Aliaksandra_Pronichk'

class User(object):
    def __init__(self, login, password, email, firstName, lastName, accountId=0, enabled=None, accountAdmin=None, liteUser=None, engageUser=None, company=None,
                 jobTitle=None, phone=None, address1=None, address2=None, country=None, state=None, zip=None, collaborateLogin=None, autoRefreshEnabled=None,
                 autoRefreshInterval=None, userId=None):
        self.login = login
        self.password = password
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.accountId = accountId
        self.enabled = enabled
        self.accountAdmin = accountAdmin
        self.liteUser = liteUser
        self.engageUser = engageUser
        self.company = company
        self.jobTitle = jobTitle
        self.phone = phone
        self.address1 = address1
        self.address2 = address2
        self.country = country
        self.state = state
        self.zip = zip
        self.collaborateLogin = collaborateLogin
        self.autoRefreshEnabled = autoRefreshEnabled
        self.autoRefreshInterval = autoRefreshInterval
        self.id = userId

    def __str__(self):
        return("{0}".format(self.__dict__))

class CreateUser(object):
    def create_user_object(self, login, password, email, firstName, lastName, accountId=0, enabled='true', accountAdmin=None, liteUser=None,engageUser=None, company=None,
                    jobTitle=None, phone=None, address1=None, address2=None, country=None, state=None, zip=None, collaborateLogin=None, autoRefreshEnabled=None,
                    autoRefreshInterval=None, userId=None):
        return User(login, password, email, firstName,  lastName, accountId, enabled, accountAdmin, liteUser, engageUser, company, jobTitle, phone, address1, address2,
                    country, state, zip, collaborateLogin, autoRefreshEnabled, autoRefreshInterval, userId)
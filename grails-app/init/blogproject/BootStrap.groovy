package blogproject

import com.blog.Role
import com.blog.User
import com.blog.UserRole

class BootStrap {

    def init = { servletContext ->
        User owner = User.findOrSaveWhere(firstname: 'darsh' ,lastname: 'mehra',username: 'darshmehra', password: 'asdfghjkl')
        Role adminRole = Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
        UserRole.create owner,adminRole, true
    }
    def destroy = {
    }
}

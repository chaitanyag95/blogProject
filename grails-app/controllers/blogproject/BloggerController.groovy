package blogproject

import com.blog.Role
import com.blog.User
import com.blog.UserRole

class BloggerController {
    def bloggerService
    def register()
    {
        User blogger = bloggerService.bloggerInfo(params.firstname,params.lastname,params.username,params.password)
       // blogger.save()
        Role roleBlog = Role.findOrSaveWhere(authority: 'ROLE_BLOGGER')
        UserRole.create(blogger,roleBlog,true)
        redirect(controller:'login', action: 'auth')
    }
    def success(){ }

    def index() { }
}

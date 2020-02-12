package blogproject

import com.blog.Blog
import com.blog.User
import org.springframework.security.access.annotation.Secured


@Secured('ROLE_BLOGGER')

class BlogieController {
    def springSecurityService

    def index() {}

    def createBlog() {


    }

    def saveBlog() {
        User blogger_id = springSecurityService.currentUser
        //print blogger_id
        Blog blog = new Blog(params)
        blog.user = blogger_id
        // print blog.user
        blog.save()
        flash.message = "Blogs aa gya"
        print "${flash.message}"
        redirect(action: "createBlog")
        // render("bchgh")

    }
/*
    def viewBlog() {
        User user = springSecurityService.currentUser as User
        List results = Blog.createCriteria().list {
            eq('user', user)
            projections {
                property('title')
                property('content')
            }
        }
        [results: results]


    }*/

}

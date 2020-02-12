package com.blog

import grails.gorm.transactions.Transactional

import javax.jws.soap.SOAPBinding

@Transactional
class BloggerService {

    def serviceMethod() {
    }
    User bloggerInfo(String firstname, String lastname, String username,String password){
        User bloggers = new User()
        bloggers.firstname=firstname
        bloggers.lastname=lastname
        bloggers.username=username
        bloggers.password=password
        bloggers.save()
        return bloggers

    }



}

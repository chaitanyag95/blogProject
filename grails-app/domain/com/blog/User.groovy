package com.blog

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import grails.compiler.GrailsCompileStatic
import sun.awt.X11.XSizeHints

@GrailsCompileStatic
@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
class User implements Serializable {

    private static final long serialVersionUID = 1
    String firstname
    String lastname

    String username
    String password

    boolean enabled = true
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired
    static hasMany = [blog:Blog]


    Set<Role> getAuthorities() {
        (UserRole.findAllByUser(this) as List<UserRole>)*.role as Set<Role>
    }

    static constraints = {
        firstname size: 3..15 ,blank: false,unique: false
        lastname size: 3..10,blank: false,unique: false
        password nullable: false, blank: false, password: true
        username nullable: false, blank: false, unique: true ,size: 5..20

    }

    static mapping = {
	    password column: '`password`'
    }
}

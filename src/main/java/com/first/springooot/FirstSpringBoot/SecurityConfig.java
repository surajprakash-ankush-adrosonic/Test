package com.first.springooot.FirstSpringBoot;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.SecurityProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;

@Configuration
@EnableGlobalMethodSecurity(prePostEnabled = true)
/*@Order(SecurityProperties.ACCESS_OVERRIDE_ORDER)*/
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

  /*  private UserManager userManager;

    @Autowired
    public SecurityConfig(UserManager userManager) {
        this.userManager = userManager;
    }*/

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.httpBasic();
        http.authorizeRequests()
                .antMatchers("/api/**").permitAll()
                .anyRequest().fullyAuthenticated();
        http.logout()
                .deleteCookies("auth_code", "JSESSIONID").invalidateHttpSession(true);
        http.rememberMe();
        http.cors();
        http.csrf().disable();
        http
        .authorizeRequests()
        .anyRequest()
        .authenticated()
        .and()
        .httpBasic();
    	//http.authorizeRequests().antMatchers("/**").authenticated().and().httpBasic();
    }

    @Override
    public void configure(AuthenticationManagerBuilder auth) throws Exception {
       /* auth.userDetailsService(userManager)
            .passwordEncoder(new BCryptPasswordEncoder());*/
        
    	 auth
         .inMemoryAuthentication()
         .withUser("user")
           .password("password")
           .roles("USER")
           .and()
         .withUser("admin")
           .password("admin")
           .roles("USER", "ADMIN");
    }
    
    @SuppressWarnings("deprecation")
	 @Bean
	 public static NoOpPasswordEncoder passwordEncoder() {
	  return (NoOpPasswordEncoder) NoOpPasswordEncoder.getInstance();
	 }

}
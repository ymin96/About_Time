package com.about_time.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.servlet.WebSecurityEnablerConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.about_time.listener.CustomLoginSuccessHandler;
import com.about_time.member.service.CustomUserDetailsService;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	CustomUserDetailsService customUserDetailsService;

	@Override
	public void configure(WebSecurity web) throws Exception {
		// TODO Auto-generated method stub
		web.ignoring().antMatchers("/resources/**");
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		// TODO Auto-generated method stub
		http.authorizeRequests()
			.antMatchers("/admin/**")
			.hasRole("ADMIN").antMatchers("/**")
			.permitAll()
			.and()
		.formLogin()
			.loginPage("/login")
			.loginProcessingUrl("/login")
			.successHandler(successHandler())
			.failureUrl("/login")
			.and()
		.logout()
			.logoutUrl("/logout")
			.logoutSuccessUrl("/main")
			.permitAll()
			.and()
			.sessionManagement()
			.invalidSessionUrl("/main");
		http.csrf().ignoringAntMatchers("/timetable/**")
			.ignoringAntMatchers("/register/**")
			.ignoringAntMatchers("/member/**")
			.ignoringAntMatchers("/community/**")
			.ignoringAntMatchers("/image")
			.ignoringAntMatchers("/loginCheck");
	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		// TODO Auto-generated method stub
		auth.userDetailsService(customUserDetailsService).passwordEncoder(passwordEncoder());
	}

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Bean
	public AuthenticationSuccessHandler successHandler() {
		return new CustomLoginSuccessHandler("/main");
	}

}

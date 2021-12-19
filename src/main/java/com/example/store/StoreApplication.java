package com.example.store;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@SpringBootApplication
public class StoreApplication implements WebMvcConfigurer {

	public static void main(String[] args) {
		SpringApplication.run(StoreApplication.class, args);
	}





//	@Override
//	public void configureViewResolvers(ViewResolverRegistry registry) {
//		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
//		resolver.setPrefix("/WEB-INF/view/");
//		resolver.setSuffix(".jsp");
//		resolver.setViewClass(JstlView.class);
//		registry.viewResolver(resolver);
//	}
}

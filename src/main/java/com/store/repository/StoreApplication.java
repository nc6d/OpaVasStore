package com.store.repository;

import com.store.entities.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.mongodb.repository.config.EnableMongoRepositories;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@SpringBootApplication
@ComponentScan("com.*")
@EnableMongoRepositories(basePackages = "com.store.repository")
public class StoreApplication implements WebMvcConfigurer, CommandLineRunner {

	@Autowired
	ProductRepository repository;

	public static void main(String[] args) {
		SpringApplication.run(StoreApplication.class, args);
	}

	@Override
	public void run(String... args) {
		repository.deleteAll();
		repository.save(new Product("01", "MacBook Pro 13 2020", "Best lap for a Spring coding", 5000));
		repository.save(new Product("02", "Acer Nitro 3", "Nice combination of price and quality - perfect choice if you both like gaming an coding", 3200));
		repository.save(new Product("03", "Dell Vostro 14212", "Pretty cool lap for a basic coding", 1500));


//		System.out.println("Products found with findAll():");
//		System.out.println("-------------------------------");
//		for (Product product : repository.findAll()) {
//			System.out.println(product);
//		}
//		System.out.println();
//		System.out.println("Products found by ID:");
//		System.out.println("-------------------------------");
//		System.out.println(repository.findById("02"));
//		System.out.println("Products found by name:");
//		System.out.println("-------------------------------");
//		System.out.println(repository.findByName("MacBook Pro 13' 2020"));
	}


}

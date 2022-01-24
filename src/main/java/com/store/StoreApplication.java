package com.store;

import com.store.entities.Product;
import com.store.entities.Role;
import com.store.entities.Status;
import com.store.entities.User;
import com.store.repository.ProductRepository;
import com.store.repository.UserRepository;
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

    ProductRepository productRepository;
    UserRepository userRepository;

    @Autowired
    public void setProductRepository(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @Autowired
    public void setUserRepository(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public static void main(String[] args) {
        SpringApplication.run(StoreApplication.class, args);
    }

    @Override
    public void run(String... args) {

        /* Products inserting into Mongo */
        productRepository.deleteAll();
        productRepository.save(new Product(
                "MacBook Pro 13 2020",
                "Best lap for a Spring coding",
                5000));
        productRepository.save(new Product(
                "Acer Nitro 3",
                "Nice combination of price and quality - perfect choice if you both like gaming an coding",
                3200));
        productRepository.save(new Product(
                "Dell Vostro 14212",
                "Pretty cool lap for a basic coding",
                1500));

        /* Users inserting into Mongo */
//        userRepository.deleteAll();
//        userRepository.save(new User(
//                "admin",
//                "admin@mail.com",
//                "$2a$12$p/97dDy3iXWopmPz3speReojImnDz88YyH3qXQsG9N//R1UnVS5.y",
//                Role.ADMIN,
//                Status.ACTIVE
//        ));
//        userRepository.save(new User(
//                "user",
//                "user@mail.com",
//                "$2a$12$PT3j5HkQYrKS/ucWM/3Fc.Im8Xi0sebRY7cMxZCWd7c6q/12b6NOi",
//                Role.USER,
//                Status.ACTIVE
//        ));

    }


}

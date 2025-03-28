/**
* Service for run the Eureka Server
*/
package com.impart.buddies.eurekaserver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@EnableEurekaServer
@SpringBootApplication
public class ImpartBuddiesEurekaServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(ImpartBuddiesEurekaServerApplication.class, args);
	}

}

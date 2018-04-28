package com.liumapp.docker.bus.engine.job;

import com.liumapp.docker.bus.engine.job.component.DetailJob;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @author liumapp
 * @file ToolAConfig.java
 * @email liumapp.com@gmail.com
 * @homepage http://www.liumapp.com
 * @date 3/22/18
 */
@Configuration
public class LongTimeJob {

    @Bean
    public DetailJob detailJob () {
        return new DetailJob();
    }

}

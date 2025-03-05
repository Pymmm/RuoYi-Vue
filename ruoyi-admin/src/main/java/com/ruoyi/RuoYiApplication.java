package com.ruoyi;
// 指定当前类所在的包名，com.ruoyi 是项目的基础包路径。

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
// 导入 Spring Boot 所需的核心类，SpringApplication 用于启动 Spring Boot 应用程序，
// @SpringBootApplication 是 Spring Boot 的启动注解，DataSourceAutoConfiguration 是数据库自动配置相关的类。

/**
 * 启动程序
 *
 * @author ruoyi
 */
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
// @SpringBootApplication 是一个组合注解，相当于 @Configuration、@EnableAutoConfiguration 和 @ComponentScan。
// exclude = { DataSourceAutoConfiguration.class } 表示启动时排除数据库自动配置。
// 这可能是因为 RuoYi 使用了自定义的数据源配置，避免 Spring Boot 自动连接默认数据库。

public class RuoYiApplication
{
    public static void main(String[] args)
    {
        // System.setProperty("spring.devtools.restart.enabled", "false");
        // 设置 Spring Boot 开发工具（DevTools）的自动重启功能为 false，一般用于调试时避免项目自动重启。

        SpringApplication.run(RuoYiApplication.class, args);
        // 启动 Spring Boot 应用程序，将当前类 RuoYiApplication 作为启动入口。
        // SpringApplication.run 方法会启动嵌入的 Tomcat 服务器，初始化 Spring 环境，加载项目中的各种配置。

        System.out.println("(♥◠‿◠)ﾉﾞ  若依启动成功   ლ(´ڡ`ლ)ﾞ  \n" +
                " .-------.       ____     __        \n" +
                " |  _ _   \\      \\   \\   /  /    \n" +
                " | ( ' )  |       \\  _. /  '       \n" +
                " |(_ o _) /        _( )_ .'         \n" +
                " | (_,_).' __  ___(_ o _)'          \n" +
                " |  |\\ \\  |  ||   |(_,_)'         \n" +
                " |  | \\ `'   /|   `-'  /           \n" +
                " |  |  \\    /  \\      /           \n" +
                " ''-'   `'-'    `-..-'              ");
        // 打印启动成功的 ASCII 艺术字，用于在控制台输出一些可爱的图形，表示项目启动成功。
    }
}

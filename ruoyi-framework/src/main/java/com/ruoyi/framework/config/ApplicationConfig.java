package com.ruoyi.framework.config;

// 引入所需的类和注解
import java.util.TimeZone;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.autoconfigure.jackson.Jackson2ObjectMapperBuilderCustomizer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

/**
 * 程序注解配置
 *
 * @author ruoyi
 */
@Configuration
// 通过 AOP（面向切面编程）框架暴露代理对象，允许通过 AopContext 访问当前代理对象
@EnableAspectJAutoProxy(exposeProxy = true)
// 指定 Mapper 接口扫描的包路径，自动注册 MyBatis Mapper 接口
@MapperScan("com.ruoyi.**.mapper")
public class ApplicationConfig
{
    /**
     * 时区配置
     */
    @Bean
    public Jackson2ObjectMapperBuilderCustomizer jacksonObjectMapperCustomization()
    {
        // 设置 Jackson 序列化和反序列化时使用的默认时区为系统默认时区
        return jacksonObjectMapperBuilder -> jacksonObjectMapperBuilder.timeZone(TimeZone.getDefault());
    }
}

package com.ssafy.happyhouse.config;

import java.util.Arrays;
import java.util.List;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.resource.PathResourceResolver;

import com.ssafy.happyhouse.ConfirmInterceptor;
import com.ssafy.happyhouse.user.model.service.JwtInterceptor;

@Configuration
//@EnableAspectJAutoProxy
@MapperScan(basePackages = { "com.ssafy.**.model.dao" })
public class WebMvcConfiguration implements WebMvcConfigurer {

	// interceptor에서 처리할 url 리스트를 설정
	private final List<String> patterns = Arrays.asList("/board/*", "/admin", "/user/list");
    private static final String[] INCLUDE_PATHS = {
            "/bookmark/**",
            "/notice/**",
            "/qna"
    };
    private static final String[] EXCLUDE_PATHS = {
            "/user/**",
            "/house/**",
    };
	@Autowired
	private ConfirmInterceptor confirmInterceptor;
	
	@Autowired
	private JwtInterceptor  jwtInterceptor;

	private final String uploadFilePath;

	public WebMvcConfiguration(@Value("${file.path.upload-files}") String uploadFilePath) {
		this.uploadFilePath = uploadFilePath;
	}

//	rest를 위한 crossorigin설정
//	@Override
	public void addCorsMappings(CorsRegistry registry) {
		registry.addMapping("/**").allowedOrigins("*")
//			.allowedOrigins("http://localhost:8080", "http://localhost:8081")
				.allowedMethods(HttpMethod.GET.name(), HttpMethod.POST.name(), HttpMethod.PUT.name(),
						HttpMethod.DELETE.name(), HttpMethod.HEAD.name(), HttpMethod.OPTIONS.name(),
						HttpMethod.PATCH.name())
				.allowedMethods("GET", "POST", "PUT", "DELETE", "OPTIONS", "PATCH", "HEAD").maxAge(1800);
	}

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(confirmInterceptor).addPathPatterns(patterns);
		registry.addInterceptor(jwtInterceptor).addPathPatterns(INCLUDE_PATHS)
											   .excludePathPatterns(EXCLUDE_PATHS);
	}

	// fileupload를 위한 요청 경로와 실제 경로 매핑
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/upload/file/**").addResourceLocations("file:///" + uploadFilePath + "/")
				.setCachePeriod(3600).resourceChain(true).addResolver(new PathResourceResolver());
	}
}

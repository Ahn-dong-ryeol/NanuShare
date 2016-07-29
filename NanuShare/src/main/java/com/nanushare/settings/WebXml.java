package com.nanushare.settings;

import javax.servlet.FilterRegistration;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;
 
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.DispatcherServlet;
 
public class WebXml implements WebApplicationInitializer{
 
    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
        
        AnnotationConfigWebApplicationContext ctx = new AnnotationConfigWebApplicationContext();
        ctx.register(ServletContextXml.class);
        servletContext.addListener(new ContextLoaderListener(ctx));
        
        FilterRegistration.Dynamic charEncodingFilter = 
                servletContext.addFilter("charEncodingFilter", getCharacterEncodingFilter());
    
        ctx.setServletContext(servletContext);
        
        ServletRegistration.Dynamic servlet = 
                servletContext.addServlet("dispatcher", new DispatcherServlet(ctx));
        
        charEncodingFilter.addMappingForServletNames(null, true, servlet.getName());
        
        servlet.addMapping("/");
        servlet.setLoadOnStartup(1);
    }
    
    private CharacterEncodingFilter getCharacterEncodingFilter(){
        CharacterEncodingFilter filter = new CharacterEncodingFilter();
        
        filter.setEncoding("UTF-8");
        filter.setForceEncoding(true);
        return filter;
    }
 
}



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Config.Conexion;
import Entidad.Persona;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author dayisboada
 */

@Controller
public class Controlador {
    
    Conexion con = new Conexion();
    JdbcTemplate jdbctemplate = new JdbcTemplate(con.conectar());
    ModelAndView mav = new ModelAndView(); 
    int id;
    List datos;
    
    @RequestMapping(value = "/index")
    public ModelAndView Listar(){
    
        String sql = "Select * from persona";
         datos = this.jdbctemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("index");
        return mav;
        
    }
    
        @RequestMapping(value = "/agregar", method = RequestMethod.GET)
        public ModelAndView agregar(){            
        mav.addObject(new Persona());
        mav.setViewName("agregar");
        return mav;
        
    }
        
        @RequestMapping(value = "/agregar", method = RequestMethod.POST)
        public ModelAndView agregar(Persona p)
        {            
        String sql= "insert into persona(Nombres, Correo, Nacionalidad) values (?,?,?) ";
        this.jdbctemplate.update(sql, p.getNom(), p.getCorreo(), p.getNacio());
        return new ModelAndView("redirect:/index");
        
    }
    
    @RequestMapping(value = "/editar", method = RequestMethod.GET)
    public ModelAndView editar(HttpServletRequest request){
    
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "Select * from persona where id=" + id;
        datos = this.jdbctemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("editar");
        return mav;
    
    }
    
    
     @RequestMapping(value = "/editar", method = RequestMethod.POST)
    public ModelAndView editar(Persona p){
    
       
        String sql = "update persona set Nombres=?, Correo=?, Nacionalidad =? where id ="+ id;
        this.jdbctemplate.update(sql,p.getNom(),p.getCorreo(), p.getNacio());
        
        return new ModelAndView("redirect:/index");
    
    }
    
    
    
    
    
    
    
    
    
    
}

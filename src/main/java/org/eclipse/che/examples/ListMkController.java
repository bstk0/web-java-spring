package org.eclipse.che.examples;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.joda.time.LocalDateTime;
import org.odata4j.consumer.ODataConsumer;
import org.odata4j.consumer.ODataConsumers;
import org.odata4j.jersey.consumer.ODataJerseyConsumer;
import org.odata4j.core.OEntity;
import org.odata4j.core.OFuncs;
import org.odata4j.core.OProperties;

//@Controller
//public class ListMkController {
public class ListMkController implements Controller {

	//@RequestMapping(value = "/listMk", method = RequestMethod.GET)
	//public ModelAndView getdata() {
	@Override
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
    {

		List<String> list = getODataCarrosList(); //getList();

		ModelAndView model = new ModelAndView("listMk"); //index
		model.addObject("lists", list);

		return model;
		
	}

	private List<String> getList() {

		List<String> list = new ArrayList<String>();
		list.add("List A");
		list.add("List B");
		list.add("List C");
		list.add("List D");
		list.add("List 1");
		list.add("List 2");
		list.add("List 3");

		return list;

	}
	
    private List<String> getODataCarrosList() {
        List<String> list = new ArrayList<String>();
        
        // create consumer instance
        //String serviceUrl = "http://services.odata.org/OData/OData.svc/";
        String serviceUrl = "http://services.odata.org/V2/OData/OData.svc/";
        ODataConsumer consumer = ODataConsumers.create(serviceUrl);

        // list category names
        for (OEntity category : consumer.getEntities("Categories").execute()) {
            String categoryName = category.getProperty("Name", String.class).getValue();
            System.out.println("Category name: " + categoryName);
            list.add(categoryName);
        }

        
        /*create consumer instance
        //String serviceUrl = "http://t846.databoom.space/api1/b846/collections/Carros/"; 
        String serviceUrl = "http://services.odata.org/OData/OData.svc/";
        ODataConsumer consumer = ODataConsumers.create(serviceUrl);
        //ODataConsumer consumer = ODataConsumer.newBuilder(serviceUrl);
        //ODataConsumer consumer = ODataJerseyConsumer.create(serviceUrl);
        // list category names
        for (OEntity category : consumer.getEntities("d").execute()) {
            String categoryName = category.getProperty("NOME", String.class).getValue();
            System.out.println("Category name: " + categoryName);
            list.add(categoryName);
        }
        */
        return list;
    }

}
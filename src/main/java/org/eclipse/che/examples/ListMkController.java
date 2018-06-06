package org.eclipse.che.examples;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@Controller
//public class ListMkController {
public class ListMkController implements Controller {

	//@RequestMapping(value = "/listMk", method = RequestMethod.GET)
	//public ModelAndView getdata() {
	@Override
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
    {

		List<String> list = getList();

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

}
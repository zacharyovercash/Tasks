package com.hcl.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.hcl.dao.TaskRepository;
import com.hcl.model.Task;

@RestController
public class TaskController {

	@Autowired
	private TaskRepository repo;
	
	
	@GetMapping("/display")
	public ModelAndView displayTasks(ModelMap model) {
		System.out.println(model.getAttribute("name"));
		List<Task> lst = (List<Task>) repo.findAll();
		return new ModelAndView("display","tasks",lst);
	}
	
	@GetMapping("/add")
	public ModelAndView addTasks() {
		return new ModelAndView("add");
	}
	
	@PostMapping("/add")
	public void addingTasks(Task t,HttpServletResponse response) throws IOException {
		repo.save(t);
		response.sendRedirect("/display");
	}
	
	@GetMapping("/update/{taskId}")
	public ModelAndView editTask(Task t) {
		ModelAndView mav = new ModelAndView("update");
		Task task = repo.findById(t.getTaskId()).get();
		mav.addObject("update",task);
		return mav;
	}
	
	@PostMapping("/update/{taskId}")
	public void editingTasks(Task t,HttpServletResponse response) throws IOException {
		repo.save(t);
		response.sendRedirect("/display");
	}
	
	@GetMapping("/delete/{taskId}")
	public ModelAndView deleteTask(Task t) {
		ModelAndView mav = new ModelAndView("delete");
		Task task = repo.findById(t.getTaskId()).get();
		mav.addObject("delete",task);
		return mav;
	}
	
	@PostMapping("/delete/{taskid}")
	public void deletingTasks(Task t,HttpServletResponse response) throws IOException {
		repo.delete(t);
		response.sendRedirect("/display");
	}
	
	
}

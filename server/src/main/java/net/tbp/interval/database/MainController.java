package net.tbp.interval.database;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import net.tbp.interval.backup.Task;

@Controller
@RequestMapping(path = "/test")
public class MainController {
	@Autowired
	private TaskRepository taskRepo;

	@PostMapping(path = "/add") // Map ONLY POST Requests
	public @ResponseBody String addNewUser(@RequestParam String name) {

		Task task = new Task();
		task.setName(name);
		taskRepo.save(task);
		return String.format("Successfully saved task %s.", name);
	}

	@GetMapping(path = "/all")
	public @ResponseBody Iterable<Task> getAllUsers() {
		// This returns a JSON or XML with the users
		return taskRepo.findAll();
	}
}

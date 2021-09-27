package net.tbp.interval.database;

import org.springframework.data.repository.CrudRepository;

import net.tbp.interval.backup.Task;

public interface TaskRepository extends CrudRepository<Task, Integer> {

}

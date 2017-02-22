package com.hackbulgaria.bugtracking.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hackbulgaria.bugtracking.dao.DevDao;
import com.hackbulgaria.bugtracking.entities.Developer;

@Service
public class DeveloperServiceImpl implements DeveloperService {

	@Autowired
	private DevDao devDao;

	@Override
	public boolean addDeveloper(Developer dev) {
		devDao.add(dev);
		return true;
	}

	@Override
	public boolean deleteDeveloper(int id) {
		devDao.delete(id);
		return true;
	}

	@Override
	public boolean editDeveloper(Developer dev) {
		devDao.edit(dev);
		return true;
	}

	@Override
	public List<Developer> getDevelopers() {
		return devDao.getListOfDevs();
	}
	
	@Override
	public Developer loginDeveloper(int userId, String password) {
		Developer developer = getDeveloper(userId);
		if (developer != null && developer.getPassword().equals(password)) {
			return developer;
		}
		return null;
	}

	@Override
	public Developer getDeveloper(int id) {
		return devDao.getDeveloper(id);
}

}

package comm.dao;

import java.util.List;
import org.hibernate.Criteria;
//import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import comm.model.Employee;

@Repository("EmployeeDAO")
public class EmployeeDAOImpl extends AbstractDAO<Integer, Employee> implements EmployeeDAO {

	@Override
	public Employee findById(int id) {
		return getByKey(id);
	}

	@Override
	public void saveEmployee(Employee employee) {

		persist(employee);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Employee> findAllEmployees() {
		Criteria criteria = createEntityCriteria();
		return (List<Employee>) criteria.list();
	}

	@Override
	public void deleteEmployeeBySsn(String ssn) {
		Criteria criteria = createEntityCriteria();
		Employee emp = (Employee) criteria.add(Restrictions.eq("ssn", ssn)).uniqueResult();
		delete(emp);
	}

	@Override
	public Employee findEmployeeBySsn(String ssn) {
		Criteria criteria = createEntityCriteria();
		criteria.add(Restrictions.eq("ssn", ssn));
		return (Employee) criteria.uniqueResult();
	}

}

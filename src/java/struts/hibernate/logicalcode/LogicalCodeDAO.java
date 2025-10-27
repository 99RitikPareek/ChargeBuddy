package struts.hibernate.logicalcode;

import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import struts.dto.AdminSignin;
import struts.dto.Complain;
import struts.dto.Customer;
import struts.dto.FeedBack;
import struts.dto.Request;
public class LogicalCodeDAO 
{
        public void signUp(Customer customerA)
        {
            SessionFactory sf=new Configuration().configure().buildSessionFactory();
            Session session=sf.openSession();
            Transaction tx=session.beginTransaction();
            session.save(customerA);
            tx.commit();
            session.close();
        }
        public boolean checkSignin(Customer customer) {
    SessionFactory sf = new Configuration().configure().buildSessionFactory();
    Session session = sf.openSession();
    Transaction tx = session.beginTransaction();

    Criteria crit = session.createCriteria(Customer.class); 
    crit.add(Restrictions.and(
        Restrictions.eq("customerId", customer.getCustomerId()), 
        Restrictions.eq("password", customer.getPassword())
    ));

    List<Customer> list = crit.list();
    tx.commit();
    session.close();

    return !list.isEmpty(); 
}

        public void Request(Request order)
        {
            SessionFactory sf=new Configuration().configure().buildSessionFactory();
            Session session=sf.openSession();
            Transaction tx=session.beginTransaction();
            session.save(order);
            tx.commit();
            session.close();
        }
        public boolean checkAdminSignin(AdminSignin adminSignin)
        {
            SessionFactory sf=new Configuration().configure().buildSessionFactory();
            Session session=sf.openSession();
            Transaction tx=session.beginTransaction();
            Criteria crit=session.createCriteria(AdminSignin.class);
            
            crit.add(Restrictions.and(Restrictions.eq("adminId",adminSignin.getAdminId()),Restrictions.eq("adminPassword",adminSignin.getAdminPassword())));
            List<AdminSignin> list=crit.list();
            if(list.isEmpty())
                return false;
                return true;
                
        }
        public boolean changePassword(AdminSignin adminSignin)
        {
            SessionFactory sf=new Configuration().buildSessionFactory();
            Session session=sf.openSession();
            Transaction tx=session.beginTransaction();
            Criteria crit=session.createCriteria(AdminSignin.class);
            
            crit.add(Restrictions.and(Restrictions.eq("adminId",adminSignin.getAdminId()),Restrictions.eq("adminPassword",adminSignin.getAdminPassword())));
            List<AdminSignin>list=crit.list();
            if(!list.isEmpty())
            {
                if(adminSignin.getAdminNewPassword().equals(adminSignin.getAdminPassword()))
                {
                    AdminSignin ref = (AdminSignin)session.get(AdminSignin.class, adminSignin.getAdminId());
                    ref.setAdminPassword(adminSignin.getAdminNewPassword());
                    session.update(ref);
                    tx.commit();
                    return true;
                    
                }
            }
            return false;
          
        }
        
         public void complain(Complain complain)
        {
            SessionFactory sf=new Configuration().configure().buildSessionFactory();
            Session session=sf.openSession();
            Transaction tx=session.beginTransaction();
            session.save(complain);
            tx.commit();
            session.close();
        }
         public void feedback(FeedBack feedback) {
    SessionFactory sf=new Configuration().configure().buildSessionFactory();
    Session session = sf.openSession();
    Transaction tx = session.beginTransaction();
    session.save(feedback);
    tx.commit();
    session.close();
}
public void Request1 (Request request) {
    SessionFactory sf=new Configuration().configure().buildSessionFactory();
    Session session = sf.openSession();
    Transaction tx = session.beginTransaction();
    session.save(request);
    tx.commit();
    session.close();
}

    }

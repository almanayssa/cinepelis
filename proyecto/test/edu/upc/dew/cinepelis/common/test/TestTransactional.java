package edu.upc.dew.cinepelis.common.test;


import org.apache.log4j.Logger;
import org.junit.runner.RunWith;

import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"applicationContext.xml"})  
@TransactionConfiguration(transactionManager="transactionManager")
@Transactional
public class TestTransactional  {
	 protected Logger log = Logger.getLogger(this.getClass());; 

	 
}



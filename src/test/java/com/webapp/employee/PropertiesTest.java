package com.webapp.employee;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;

import javax.servlet.ServletException;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webapp.controller.Controller;

public class PropertiesTest {

	static Log log = LogFactory.getLog(PropertiesTest.class);
	
	public static void main(String[] args) throws IOException, ServletException {
		
		File file = new File("src/main/webapp/WEB-INF/cmd/employee.properties");
//		File file = new File("src/main/webapp/WEB-INF/cmd/world.properties");
		FileInputStream inStream = new FileInputStream(file);
		
		Properties prop = new Properties();
		prop.load(inStream);
		
		
//		prop.list(System.out);
		
		Map<String, Controller> cmdMap = new HashMap<String, Controller>();
		
		Set<Entry<Object, Object>> set = prop.entrySet();
		for(Entry<Object, Object> e : set) {
			log.info("[" + e.getKey() + "]=[" + e.getValue() + "]");
			
			String cmd = (String) e.getKey();
			String clsName = (String) e.getValue();
			
			try {
//				Class<Controller> cls = (Class<Controller>) Class.forName((String) e.getValue());
				
				Class cls = Class.forName(clsName);
				Controller c = (Controller) cls.newInstance();

				cmdMap.put(cmd, c);
				
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		
		if (cmdMap.containsKey("dept1")) {
			Controller c1 = cmdMap.get("dept1");
			c1.process(null, null);
		} else {
			System.out.println("명령어가 존재하지 않습니다.");
		}
	}
}

   drop database link site_link2;

			create database link site_link2
 			connect to system identified by "123789"
			using '(DESCRIPTION =
       				   (ADDRESS_LIST = (ADDRESS = (PROTOCOL = TCP) (HOST = 192.168.0.104) (PORT = 1521)))
      				   (CONNECT_DATA = (SID = XE))
    			       )' ; 
	
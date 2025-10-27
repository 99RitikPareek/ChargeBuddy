<%@page import="org.hibernate.Criteria,org.hibernate.Session,org.hibernate.SessionFactory,org.hibernate.Transaction,org.hibernate.cfg.Configuration,java.util.List"%>
<%@page import="struts.dto.CustomerOrder" %>
<%@taglib prefix="strutsns"  uri="/struts-tags"%>
<%@taglib prefix="strutsns_dojo"  uri="/struts-dojo-tags"%>
<strutsns_dojo:head debug="true"/>


<%

SessionFactory sf=new Configuration().configure().buildSessionFactory();
            Session session1=sf.openSession();
            Transaction tx=session1.beginTransaction();
            Criteria crit=session1.createCriteria(CustomerOrder.class);
            List<CustomerOrder> data=crit.list();

%>

<html>
    <style>
        body{
            background-image:url('images/wp7636593.jpg');
            background-size:100%;
            background-repeat: no-repeat;
        }
        .menu{
            color:black;
            font-size:14px;
            text-transform: uppercase;
            font-family: arial;
            text-align: center;
            height: 40px;
            
        }
        .title{
            font-size:40px;
            font-family: Goudy Stout;
            margin-left:20px;
            text-align: center;
        }
        a{
            text-decoration: none;
            color:black;
        }
        h1{
                font-size:50px;
            font-family: arial;
        }
        .process{
            margin-top:250px;
            
        }
              h1{
                font-size:50px;
            font-family: arial;
        }
        /*@keyframes*/
        .process{
            margin-top:250px;
            
        }
        .formtheme{
            width:750px;
            height: 400px;
            background-color:rgba(255,255,255,0.8);
            font-size:12px;
            margin-left:350px;
            margin-top:-50px;
        }
        
        .buttontheme{
            width:150px;
            background-color:black;
            color:white;
            font-size:16px;
            text-align: center;
        }
    </style>
    <body>
        <table width="80%"  class="menu" align="right">
            <tr>
<!--                    define all the actions here-->
                <td><strutsns:a href="homeurl.action">home</strutsns:a></td>
                <td><strutsns:a href="abouturl.action">about</strutsns:a></td>
                <td><strutsns:a href="orderurl.action">order</strutsns:a></td>
                <td class="box"><s:a href="auth_pwd_setting">setting</s:a></td>
                                <td class="box"><a href="http://wa.me/">whatsapp</a></td>
                <td class="box"><a href="mailto:">mail</a></td>
                 <td class="box"><s:a href="loadhomepage">sign out</s:a></td>

            </tr>
            
            
        </table>
        
        <table  class="title">
            <tr>
                <td>FUEL HUB</td>
            </tr>
            
            <tr  style="font-size:14px;font-family: arial;color:black;">
                <td>
                    <hr>order fuel 24/7 & get quick response<hr>
                </td>
            </tr>
        </table>
                
                <H2 style="font-family:arial;margin-top:20px"> ORDER HISTORY</h2>
                
                        <%
                        for(CustomerOrder record:data)
                        {
                        %>
                
                <strutsns:div cssClass="formtheme">
                    <table border="0" >
                        
                        
                        
                        <tr>
                            <td><img src="images/petro company.png" width="300px" height="300px"></td>
                            <td>
                                
                                
    <table align="center" cellspacing="3px" cellpadding="2px">
        <tr>
            <td>Order Id</td>
            <td><%=record.getOrderId()%></td>
        </tr>
        <tr>
            <td>Customer Id</td>
            <td><%=record.getUserId()%></td>
        </tr>
        
    <tr>
            <td>Delivery Date</td>
            <td><%=record.getDeliveryDate()%></td>
        </tr>
        <tr>
            <td> Date of Order</td>
            <td><%=record.getDateOfOrder()%></td>
        </tr>
    <tr>
            <td> Fuel category</td>
            <td><%=record.getFuelType()%></td>
        </tr>
        <tr>
            <td> Quantity</td>
            <td><%=record.getQuantity()%></td>
        </tr>
        <tr>
            <td> Location</td>
            <td><%=record.getLocation()%></td>
        </tr>
    </table>

</td>
                        </tr>
                        
                    </table>
                </strutsns:div>             
                        
                        <%}%>
                        
                        
                        
                        
                        
                        
                 
                
                                
    <table align="center" cellspacing="3px" cellpadding="2px"  width='100%'>
                
        <tr align='center'  bgcolor='yellow'>
            <td>Order Id</td>
            <td>Customer Id</td>
            <td>Delivery Date</td>
            <td> Date of Order</td>
            <td> Fuel category</td>
            <td> Quantity</td>
            <td> Location</td>
        </tr>
                       <%
                        for(CustomerOrder record:data)
                        {
                        %>

        <tr align='center'>
            <td><%=record.getOrderId()%></td>
            <td><%=record.getUserId()%></td>
            <td><%=record.getDeliveryDate()%></td>
            <td><%=record.getDateOfOrder()%></td>
            <td><%=record.getFuelType()%></td>
            <td><%=record.getQuantity()%></td>
            <td><%=record.getLocation()%></td>
        </tr>
                                
                        <%}%>

                    </table>

        
    </body>
</html>
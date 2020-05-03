package com.aclic.lottery;

import com.aclic.lottery.Models.User;
import com.aclic.lottery.Utils.QRCodeUtil;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.util.DigestUtils;

import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.UnknownHostException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Enumeration;
import java.util.List;
import java.util.UUID;

public class TestJdbc {

    public static void testJDBC(String[] args) {
        //创建数据源(连接池)
        //之前使用的是c3p0连接池
        //这里使用DriverManagerDataSource, 是spring内置的一个连接池对象
//        DriverManagerDataSource ds = new DriverManagerDataSource();
//        ds.setDriverClassName("com.mysql.jdbc.Driver");
//        ds.setUrl("jdbc:mysql://localhost:3306/lottery");
//        ds.setUsername("root");
//        ds.setPassword("123123");
//
//        //创建模板对象
//        JdbcTemplate jt = new JdbcTemplate(ds);
//        //执行sql
//        List<User> users = jt.query("select * from user", new RowMapper(){
//            @Override
//            public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
//                User u = new User();
//                u.setId(rs.getString("ID"));
//                u.setAccount(rs.getString("Account"));
//                u.setPassword(rs.getString("PassWord"));
//                u.setRole(rs.getInt("Role"));
//                return u;
//            }
//        });
//        for (User u : users) {
//            System.out.println(u);
//        }

    }

    public static void rand(String[] args) {
        String uuid = UUID.randomUUID().toString().substring(0, 28);
        System.out.println(uuid);
    }

    public static void ma(String[] args) throws Exception {

        // 存放在二维码中的内容
        String text = "我是小铭";
        // 嵌入二维码的图片路径
        String imgPath = "E:\\bs-repair 的前端模板\\assets\\images\\small-logo.png";
        // 生成的二维码的路径及名称
        String destPath = "E:/jam.jpg";
        //生成二维码
        QRCodeUtil.encode(text, imgPath, destPath, true);
        // 解析二维码
//        String str = QRCodeUtil.decode(destPath);
        // 打印出解析出的内容
//        System.out.println(str);
    }

    public static void main(String[] args) throws UnknownHostException {
        System.out.println(getIpAddress());
    }

    public static String getIpAddress() {
        try {
            Enumeration<NetworkInterface> allNetInterfaces = NetworkInterface.getNetworkInterfaces();
            InetAddress ip = null;
            while (allNetInterfaces.hasMoreElements()) {
                NetworkInterface netInterface = (NetworkInterface) allNetInterfaces.nextElement();
                if (netInterface.isLoopback() || netInterface.isVirtual() || !netInterface.isUp()) {
                    continue;
                } else {
                    Enumeration<InetAddress> addresses = netInterface.getInetAddresses();
                    while (addresses.hasMoreElements()) {
                        ip = addresses.nextElement();
                        if (ip != null && ip instanceof Inet4Address) {
                            return ip.getHostAddress();
                        }
                    }
                }
            }
        } catch (Exception e) {
            System.err.println("IP地址获取失败" + e.toString());
        }
        return "";
    }

}

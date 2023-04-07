import java.io.*;
import java.util.*;
import java.net.*;

class MyServer {
    public static void main(String[] args) {
        try {

            Scanner sc = new Scanner(System.in);

            ServerSocket ss = new ServerSocket(6666);
            Socket s = ss.accept();// establishes connection

            DataInputStream dis = new DataInputStream(s.getInputStream());

            String str = (String) dis.readUTF();
            System.out.println("message= " + str);

            Thread t = new Thread();
            t.sleep(4000);

            DataOutputStream dout = new DataOutputStream(s.getOutputStream());

            System.out.println("Enter message");
            String s1 = new String();
            s1 = sc.nextLine();
            dout.writeUTF(s1);
            dout.flush();
            dout.close();
            ss.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}

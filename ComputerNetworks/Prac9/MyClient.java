import java.util.*;
import java.io.*;
import java.net.*;

class MyClient {
    public static void main(String[] args) {
        try {
            Scanner sc = new Scanner(System.in);
            Socket s = new Socket("localhost", 6666);
            DataOutputStream dout = new DataOutputStream(s.getOutputStream());
            System.out.println("Enter message");
            String s1 = new String();
            s1 = sc.nextLine();
            dout.writeUTF(s1);
            Thread t = new Thread();
            t.sleep(5000);
            dout.flush();

            DataInputStream dis = new DataInputStream(s.getInputStream());

            String str = (String) dis.readUTF();
            System.out.println("message= " + str);
            dout.close();
            s.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}


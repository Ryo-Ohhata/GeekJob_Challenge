/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.util.Scanner;
import java.util.Date;
import java.io.*;
import java.text.SimpleDateFormat;

/**
 *
 * @author hatar
 */
public class FileOperation3 {
    public static void main(String[] args){
        try{
            Date Day1 = new Date();
            Scanner scanner = new Scanner(System.in);
            System.out.print("���Ȃ��̖��O�������Ă��������B��");
            String name = scanner.nextLine();
            System.out.println(name + "....�o���܂����B");
            scanner.close(); 
            Date Day2 = new Date();

            String method = "�������e�F���O���o����";
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String start = "�������J�n���܂�(" + sdf.format(Day1) + ")";
            String end = "�������I�����܂�(" + sdf.format(Day2) + ")";

            File fp = new File("D:/�v���W�F�N�g/StandardClass/src/java/newpackage/FileOperation3.txt");
            FileWriter fw = new FileWriter(fp);
            BufferedWriter bw = new BufferedWriter(fw);
            bw.write(method);
            bw.newLine();
            bw.write(start);
            bw.newLine();
            bw.write(end);
            bw.newLine();
            bw.close();
            
            }catch(IOException e){
                System.out.println(e);
            }

}

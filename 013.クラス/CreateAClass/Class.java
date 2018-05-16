/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.servlet;

import java.io.PrintWriter;

/**
 *
 * @author hatar
 */
public class Class {
    public String name = "";
    public int age = 0;
        void input(String inputName,int inputAge){
            name = inputName;
            age = inputAge;
        }
        void output(){
            System.out.println(name + "は" + age + "歳です。");
        }
}



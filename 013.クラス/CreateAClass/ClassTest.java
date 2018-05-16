/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.servlet;

/**
 *
 * @author hatar
 */
public class ClassTest {
    public static void main(String[] args){
        Class ohhata = new Class();
        ohhata.input("大畑椋", 22);
        ohhata.output();
        Class2 ryo = new Class2();
        ryo.input("大畑", 20);
        ryo.clear();
        ryo.output();
        
    }
}
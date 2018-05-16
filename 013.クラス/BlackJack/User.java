/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.servlet;

import java.util.ArrayList;
import java.util.Random;

/**
 *
 * @author hatar
 */
public class User extends Human {
    public int open(){
        int total = 0;
        for(int val : myCard){
            total += val;
        }
        return total;
    }
    
    public void setCard(ArrayList<Integer> card){
        for(int val : card){
            myCard.add(val);
        }
    }
    
    public boolean checkSum(){
        int total = 0;
        for(int val : myCard){
            total += val;
        }
        if(total<17){
            return true;
        }else if(16<=total && total<=20){
            Random rand = new Random();
            Integer half = rand.nextInt(2);
            if(half == 0){
                return true;
            }else{
                return false;
            }
        }else{
            return false;
        }
    }
    
}

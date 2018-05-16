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
public class Dealer extends Human {
    protected ArrayList<Integer> cards = new ArrayList<Integer>();
    
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
        }else{
            return false;
        }
    }
    
    public Dealer(){
        for(int i=1;i<=4;i++){
            for(int ii=1;ii<=10;ii++){
                cards.add(ii);
            }
            for(int iii=1;iii<=3;iii++){
                cards.add(10);
            }
        }
    }
    
    public ArrayList<Integer> deal(){
        ArrayList<Integer> dealCards = new ArrayList<Integer>();
        Random rand = new Random();
        Integer index = rand.nextInt(cards.size());
        for(int i=0;i<=1;i++){
            dealCards.add(cards.get(index));
            cards.remove(index);
        }
        return dealCards;
    }
    
    public ArrayList<Integer> hit(){
        ArrayList<Integer> hitCard = new ArrayList<Integer>();
        Random rand = new Random();
        Integer index = rand.nextInt(cards.size());
        hitCard.add(cards.get(index));
        cards.remove(index);
        return hitCard;
    }
    
}

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
public class BlackJack {
    public static void main(String[] args){
        Dealer Jiro = new Dealer();
        User Taro = new User();
        Jiro.setCard(Jiro.deal());
        Taro.setCard(Jiro.deal());
        System.out.println("Jiroの手札のトータルは" + Jiro.open() + "です。");
        System.out.println("Taroの手札のトータルは" + Taro.open() + "です。");
        for(int i=1;i<=10;i++){
            if(Taro.checkSum()){
                Taro.setCard(Jiro.hit());
                System.out.println("Taroはヒットしました。");
                System.out.println("Taroの手札のトータルは" + Taro.open() + "です。");
            }else{
                System.out.println("Taroはスタンドしました。");
                for(int ii=1;ii<=10;ii++){
                    if(Jiro.checkSum()){
                        Jiro.setCard(Jiro.hit());
                        System.out.println("Jiroはヒットしました。");
                        System.out.println("Jiroの手札のトータルは" + Jiro.open() + "です。");
                    }else{
                        System.out.println("Jiroはスタンドしました。");
                        break;
                    }
                }
                break;
            }
        }
        System.out.println("-------決着!!-------");
        System.out.println("Jiro:" + Jiro.open() + "      Taro:" + Taro.open());
        if(Jiro.open() < Taro.open() ){
            if(Taro.open() <= 21){
                System.out.println("勝者。。。Taro!!");
            }else{
                System.out.println("勝者。。。Jiro!!");
            }    
        }else if(Jiro.open() > Taro.open()){
            if(Jiro.open() <= 21){
                System.out.println("勝者。。。Jiro!!");
            }else{
                System.out.println("勝者。。。Taro!!");
            }    
        }else{
            System.out.println("引き分けです");
        }
        
    }
    
}

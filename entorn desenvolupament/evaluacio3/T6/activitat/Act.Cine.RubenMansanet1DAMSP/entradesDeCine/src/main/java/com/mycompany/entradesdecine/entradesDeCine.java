/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.entradesdecine;

import java.util.Scanner;

/**
 *
 * @author ruben
 */
public class entradesDeCine {
    
    /**
     * 
     * @param args 
     */
    public static void main(String[] args) {
        int preunormal=10;
        float preuambdescompte;
        float preutotal=0;
        int edat;
        int carnetjove=0;
        Calculs calculapreus = new Calculs();
        Scanner sc=new Scanner(System.in);
        System.out.println("Entrades de cine");
        System.out.println("Quantes entrades vols?");
        int entrades=sc.nextInt();
        System.out.println("HAS DEMANAT "+entrades+" ENTRADES");
        for (int i = 1; i <= entrades; i++) { //error: no te que ser < sino <=
            System.out.println("Entrada num. "+i+": ");
            System.out.println("Tecleja edat: ");
            edat = sc.nextInt();
            if(edat >=18 && edat < 30){
                System.out.println("Te carnet jove (0 NO, 1 SI: )");
                carnetjove=sc.nextInt();
            }
            preuambdescompte=calculapreus.calculapreu(preunormal, edat, carnetjove==1);
            preutotal=preutotal+preuambdescompte;
        }
        System.out.println("TOTAL A PAGAR: "+preutotal);
    }
}

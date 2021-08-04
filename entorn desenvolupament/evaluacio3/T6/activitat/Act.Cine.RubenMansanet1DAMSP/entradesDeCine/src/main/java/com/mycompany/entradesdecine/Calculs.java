/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.entradesdecine;

/**
 *
 * @author ruben
 */
public class Calculs {

    public float calculapreu(int preunormal, int edat, boolean carnetjove) {
        float preufinal = 0.0F;
        if (edat < 6 && edat>=1) { 
            /* si no especifiquem una edat mínima pot donar-se el cas de que es puga ficar
               un valor negatiu i no deuria de ser posible eixe cas.*/
            preufinal = 0.0F; // menors de 6 anys no paguen
        } 
        else if (edat >= 6 && edat < 18) { //error logic <=18 en realitat es: <18
            preufinal = preunormal * 0.5F;// entre 6 anys i 17 paguen la mitat
        } 
        else if (edat >= 18 && edat < 30) {//error logic >18 en realitat es; >=18
            if (carnetjove == true) {
                preufinal = preunormal * 0.75F;//de 18a 29 anys si tenen carnet jove
                //tenen un 25% de descompte
            } else {
                preufinal = preunormal;
            }
        } 
        else if (edat >= 30 && edat < 65) {
            preufinal = preunormal; // entre 30 i 65 any paguen normal
        } 
        else if (edat >= 65) {
            preufinal = 0.30F * preunormal; // amb 65 any o més tenen un 70% de descompte
        }
        return preufinal;
    }
}

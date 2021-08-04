/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.entradesdecine;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author ruben
 */
public class CalculsTest {

    public CalculsTest() {
    }

    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    @Before
    public void setUp() {

    }

    @After
    public void tearDown() {
    }

    /**
     * Test of calculapreu method, of class Calculs.
     */
    @Test
    public void testCalculapreu() {
        System.out.println("calculapreu");
        int preunormal = 10;
        int edat = 1;
        boolean carnetjove = false;
        Calculs instance = new Calculs();
        float expResult = 0F;
        float result; //= instance.calculapreu(preunormal, edat, carnetjove);
        //assertEquals(expResult, result, 0.0);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
        for (int i = 1; i <= 6; i++) {
            switch (i) {
                case 1:
                    edat = 5;
                    carnetjove = false;
                    expResult = 0F;
                    result = instance.calculapreu(preunormal, edat, carnetjove);
                    assertEquals(expResult, result, 0.0);
                    break;
                case 2:
                    edat = 17;
                    carnetjove = false;
                    expResult = 5F;
                    result = instance.calculapreu(preunormal, edat, carnetjove);
                    assertEquals(expResult, result, 0.0);
                    break;
                case 3:
                    edat = 18;
                    carnetjove = false;
                    expResult = 10F;
                    result = instance.calculapreu(preunormal, edat, carnetjove);
                    assertEquals(expResult, result, 0.0);
                    break;
                case 4:
                    edat = 18;
                    carnetjove = true;
                    expResult = 7.5F;
                    result = instance.calculapreu(preunormal, edat, carnetjove);
                    assertEquals(expResult, result, 0.0);
                    break;
                case 5:
                    edat = 30;
                    carnetjove = false;
                    expResult = 10F;
                    result = instance.calculapreu(preunormal, edat, carnetjove);
                    assertEquals(expResult, result, 0.0);
                    break;
                case 6:
                    edat = 65;
                    carnetjove = false;
                    expResult = 3F;
                    result = instance.calculapreu(preunormal, edat, carnetjove);
                    assertEquals(expResult, result, 0.0);
                    break;
                default: fail("The test case is a prototype.");
                    break;
            }
        }
    }

}

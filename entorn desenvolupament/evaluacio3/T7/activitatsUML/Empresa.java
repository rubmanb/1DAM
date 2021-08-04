
import java.util.*;


/**
 * Class Empresa
 */
public class Empresa {

  //
  // Fields
  //

  private int codi;
  private String nom;
  private Departament dept;
  
  //
  // Constructors
  //
  public Empresa () { };
  
  //
  // Methods
  //


  //
  // Accessor methods
  //

  /**
   * Set the value of codi
   * @param newVar the new value of codi
   */
  public void setCodi (int newVar) {
    codi = newVar;
  }

  /**
   * Get the value of codi
   * @return the value of codi
   */
  public int getCodi () {
    return codi;
  }

  /**
   * Set the value of nom
   * @param newVar the new value of nom
   */
  public void setNom (String newVar) {
    nom = newVar;
  }

  /**
   * Get the value of nom
   * @return the value of nom
   */
  public String getNom () {
    return nom;
  }

  /**
   * Set the value of dept
   * @param newVar the new value of dept
   */
  public void setDept (Departament newVar) {
    dept = newVar;
  }

  /**
   * Get the value of dept
   * @return the value of dept
   */
  public Departament getDept () {
    return dept;
  }

  //
  // Other methods
  //

  /**
   * @param        nom
   */
  public void setNom(String nom)
  {
  }


  /**
   * @param        codi
   */
  public void setCodi(int codi)
  {
  }


  /**
   * @return       String
   */
  public String getNom()
  {
  }


  /**
   * @return       int
   */
  public int getCodi()
  {
  }


}

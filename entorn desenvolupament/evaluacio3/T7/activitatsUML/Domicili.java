
import java.util.*;


/**
 * Class Domicili
 */
public class Domicili {

  //
  // Fields
  //

  private String cPostal;
  private String poblacio;
  private Direccio dir;
  
  //
  // Constructors
  //
  public Domicili () { };
  
  //
  // Methods
  //


  //
  // Accessor methods
  //

  /**
   * Set the value of cPostal
   * @param newVar the new value of cPostal
   */
  public void setCPostal (String newVar) {
    cPostal = newVar;
  }

  /**
   * Get the value of cPostal
   * @return the value of cPostal
   */
  public String getCPostal () {
    return cPostal;
  }

  /**
   * Set the value of poblacio
   * @param newVar the new value of poblacio
   */
  public void setPoblacio (String newVar) {
    poblacio = newVar;
  }

  /**
   * Get the value of poblacio
   * @return the value of poblacio
   */
  public String getPoblacio () {
    return poblacio;
  }

  /**
   * Set the value of dir
   * @param newVar the new value of dir
   */
  public void setDir (Direccio newVar) {
    dir = newVar;
  }

  /**
   * Get the value of dir
   * @return the value of dir
   */
  public Direccio getDir () {
    return dir;
  }

  //
  // Other methods
  //

  /**
   * @return       String
   */
  public String getCpostal()
  {
  }


  /**
   * @return       String
   */
  public String getPoblacio()
  {
  }


  /**
   * @param        cpostal
   */
  public void setCpostal(String cpostal)
  {
  }


  /**
   * @param        poblacio
   */
  public void setPoblacio(String poblacio)
  {
  }


}


import java.util.*;


/**
 * Class Departament
 */
public class Departament extends Treballador {

  //
  // Fields
  //

  private int codi;
  private String nom;

  public Vector treballadorsVector = new Vector();

  
  //
  // Constructors
  //
  public Departament () { };
  
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
   * Add a Treballadors object to the treballadorsVector List
   */
  public void addTreballadors (Treballador new_object) {
    treballadorsVector.add(new_object);
  }

  /**
   * Remove a Treballadors object from treballadorsVector List
   */
  public void removeTreballadors (Treballador new_object)
  {
    treballadorsVector.remove(new_object);
  }

  /**
   * Get the List of Treballadors objects held by treballadorsVector
   * @return List of Treballadors objects held by treballadorsVector
   */
  public List getTreballadorsList () {
    return (List) treballadorsVector;
  }


  /**
   * Add a Treb object to the trebVector List
   */
  public void addTreb (Treballador new_object) {
    trebVector.add(new_object);
  }

  /**
   * Remove a Treb object from trebVector List
   */
  public void removeTreb (Treballador new_object)
  {
    trebVector.remove(new_object);
  }

  /**
   * Get the List of Treb objects held by trebVector
   * @return List of Treb objects held by trebVector
   */
  public List getTrebList () {
    return (List) trebVector;
  }


  //
  // Other methods
  //

  /**
   * @return       int
   */
  public int getCodi()
  {
  }


  /**
   * @return       String
   */
  public String getNom()
  {
  }


  /**
   * @param        codi
   */
  public void setCodi(int codi)
  {
  }


  /**
   * @param        nom
   */
  public void setNom(String nom)
  {
  }


}

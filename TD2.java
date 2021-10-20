/* ATTRIBUT FINAL*/
/*exemple 1 :cercle*/
public class cercle{
    private float rayon;
    private final float  pi=3.14;
public float calculperimetre(){
    return 2*pi*this.rayon;
}
public float calculAire(){
    return pi*this.rayon*this.rayon;
}
public cercle(){}
public cercle(float leRayon){
    this.rayon=leRayon;
}
public cercle(cercle c){
    this.rayon=c.rayon;
}
public float getRayon(){
    return this.rayon;
}
public void setRayon(float R){
    this.rayon=R;
}
public float getpi(){
    return pi;
}
}
/*exemple 2:Salaire d'un employe*/ 
public class Employe{
    private double TH;
    private final int nbreH=35;

    public Employe(){}
    public Employe (double leTauxH){
        this.Th=leTaux;
    }
    public Employe(employe E){
        this.TH=E.TH;
    }
    public double getTH(){
        return this.TH;
    }
    public int getnH(){
        return nbreH;
    }
    public void setTH(double leTH){
        this.TH=leTH;
    }
    public double salaire(int nbreS){
        return this.TH*nbreH*nbreH*nbreS;
    }

}
 public class Eleve{
    private string nom;
    private string prenom;
    private static int nbre;


    public Eleve(){nbre++;} 
    public Eleve(string nom,string prenom){
        this.nom=nom;
        this.prenom=prenom;
        nbre++;
    }
    public string getNom(){
        return this.nom;
    }

    public string getPrenom(){
        return this.prenom;
    }

    public void setNom(string nom){
        this.nom=nom;
    }

    public void setprenom(string prenom){
        this.prenom=prenom;
    }

     public static int getNbre(){
         return nbre;
     }

     public static void setNbre(int nb){
         nbre=nb;
     }
   //   public static void setNbre(int nbre){
    //     Eleve.nbre=nbre;
    // }
 }
 

 public class Gateau{
     private double farine;
     private double sucre;
     private double beurre;
     private double oeuf;
     private static String nomgateau;
     
     public Gateau(){nomgateau;}
     public Gateau(double farine,double sucre,double beurre,double oeuf){
       this.farine=farine;
       this.sucre=sucre;
       this.beurre=beurre;
       this.oeuf=oeuf;
       nomgateau;
     }
     public double getfarine(){
         return this.farine;
     }
     public double getsucre(){
         return this.sucre;
     }
     public double getbeurre(){
         return this.beurre;
     }
     public double getoeuf(){
         return this.oeuf;
     }
     public static String getnomgateau(){
         return nomgateau;
     }
     public void setfarine(double farine){
         this.farine=farine;
     }
     public void setsucre(double sucre){
         this.sucre=sucre;
     }
     public void setbeurre(double beurre){
         this.beurre=beurre;
     }
     public void setoeuf(double oeuf){
         this.oeuf=oeuf;
     }
     public static void setnomgateau(string nomgateau){
         Gateau.nomgateau=nomgateau;
     }

 }
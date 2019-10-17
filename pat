package ahoj;
import java.util.Random;
public class Ahoj {
Random rd = new Random();


String[][]pole = new String[15][15];

public void Ahoj(){
    
    int d = rd.nextInt(13);
    int a = rd.nextInt(13);
   
    for (int i = 0; i < 15; i++) {
        System.out.print(" # ");
    }
    for (int i = 0; i < 15; i++) {
            System.out.print("#");
            System.out.println(" ");
            System.out.print("#");
            for (int j = 0; j < 15; j++) {
                pole[i][j]="*";
                
               int y = a;
               int x = d;
                
                pole[14][14]="D";
                pole[x][y]="U";
                
                while(pole[x][y].equals("*")||pole[x][y].equals("U")||pole[x][y].equals("C")){
                    
                    if(x<14)x++;
                    pole[x][y]="C";
                    if(y<14)y++;
                    pole[x][y]="C";
                    if(x==14&&y==14)pole[x][y]="D";
                    
                }
                System.out.print(" "+pole[i][j]+" ");
                
            }
    }
    System.out.println("");
    for (int i = 0; i < 16; i++) {
        System.out.print(" # ");
    }
   
}

public static void main(String[] args) {
    Ahoj vypisUdaje = new Ahoj ();
    vypisUdaje.Ahoj();
    }
    
}

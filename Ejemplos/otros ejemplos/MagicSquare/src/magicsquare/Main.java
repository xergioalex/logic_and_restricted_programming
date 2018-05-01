/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package magicsquare;

/**
 *
 * @author utp
 */
import choco.Choco;
import choco.cp.model.CPModel;
import choco.cp.solver.CPSolver;
import choco.kernel.model.Model;
import choco.kernel.model.constraints.Constraint;
import choco.kernel.model.variables.integer.IntegerVariable;
import choco.kernel.solver.Solver;

public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
     //costantes del problema
        int n = 3;
        int M = n*(n + 1)/2;

        //Nuestro modelo
        Model m = new CPModel();

        //Matriz de n*n de variables enteras
        IntegerVariable[][] cells = new IntegerVariable[n][n];
        for( int i = 0; i < n; i++){
            for ( int j = 0; j < n; j++){
                cells[i][j] = Choco.makeIntVar("cell" + j, 1, n*n);
                m.addVariable(cells[i][j]);
            }
        }
        //Restricciones
        //...Sobre Filas
        Constraint[] rows = new Constraint[n];
        for (int i = 0; i < n; i++){
            rows[i] = Choco.eq(Choco.sum(cells[i]),M);
        }
        m.addConstraints(rows);

        //...sobre columnas
        //primero, las columnas sobre variables temporales
        IntegerVariable[][] cellDual = new IntegerVariable[n][n];
        for( int i = 0; i < n; i++){
            for( int j = 0; j < n; j++){
                cellDual[i][j] = cells[j][i];
            }
        }

        Constraint[] cols = new Constraint[n];
        for (int i = 0; i < n; i++){
            cols[i] = Choco.eq(Choco.sum(cellDual[i]),M);
        }
        m.addConstraints(cols);

        //... Sobre las DIagonales
        IntegerVariable[][] diag = new IntegerVariable[2][n];
        for (int i = 0; i < n; i++){
            diag[0][i] = cells[i][i];
            diag[1][i] = cells[i][(n-1)-i];
        }
        m.addConstraint(Choco.eq(Choco.sum(diag[0]),M));
        m.addConstraint(Choco.eq(Choco.sum(diag[1]),M));

        //Todas las deldas sean diferentes entre ellas
        IntegerVariable[] allvars = new IntegerVariable[n*n];
        for( int i = 0; i < n; i++){
            for( int j = 0; j < n; j++){
                allvars[i*n + j] = cells[i][j];
            }
        }

        m.addConstraint(Choco.allDifferent(allvars));

        //Nuestra Solucion
        Solver s = new CPSolver();

        //Leer el modelo
        s.read(m);

        //resolver problema
        s.solve();

        //Imprimir solicion
        for( int i = 0; i < n; i++){
            for ( int j = 0; j < n; j++){
                System.out.print(s.getVar(cells[i][j]).getVal() + " ");
            }
            System.out.println();
        }
    }
}

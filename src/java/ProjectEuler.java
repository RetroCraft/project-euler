import java.lang.reflect.Method;

/**
 * Core class for running and timing
 *
 * @author James Ah Yong
 */
public class ProjectEuler {

  public static void main(String[] args) {
    String problemName = "Problem" + String.format("%03d", Integer.parseInt(args[0]));
    System.out.println(problemName);
    try {
      Class<? extends Problem> problemClass = Class.forName(problemName).asSubclass(Problem.class);
      Method main = problemClass.getMethod("main");
      System.out.println("\nOutput:");
      main.invoke(null);
    } catch (Exception e) {
      e.printStackTrace();
    }
  }

}

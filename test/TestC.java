import org.junit.Test;

/**
 * Created by Phoenix on 2016/7/11.
 */
public class TestC {
    @Test
    public void test1() {
        int num = 10;
        for (int i = 0; i < num; i++) {
            if (i == 0) {
                System.out.print("<div2>\n    <div3></div3>\n");
                if (i == num - 1) {
                    System.out.println("</div2>");
                }
            } else if (i == num - 1) {
                System.out.print("    <div3></div3>\n</div2>\n");
            } else if (i % 3 == 2) {
                System.out.print("    <div3></div3>\n</div2>\n<div2>\n");
            } else {
                System.out.print("    <div3></div3>\n");
            }
        }
    }
}

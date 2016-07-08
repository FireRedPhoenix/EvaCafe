package cn.phoenix.evacafe.domain;

/**
 * Created by Phoenix on 2016/7/8.
 */
public class Pics {
    //图片编号，主键
    private int pic_id;
    //图片路径，存储绝对路径
    private String path;
    //商品编号
    private int product_id;

    public int getPic_id() {
        return pic_id;
    }

    public void setPic_id(int pic_id) {
        this.pic_id = pic_id;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }
}

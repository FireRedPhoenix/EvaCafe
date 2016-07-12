package cn.phoenix.evacafe.domain;

import cn.phoenix.evacafe.domain.base.CafeObj;

import java.io.Serializable;
import java.util.List;

/**
 * Created by Phoenix on 2016/7/8.
 */
public class Product extends CafeObj {
    //商品编号
    private int productId;
    //商品名称
    private String productName;
    /**
     * 商品种类
     * <p/>
     * 咖啡粉、咖啡豆、挂耳咖啡、成品、咖啡杯、咖啡机
     */
    private String type;
    // 品牌
    private String brand;
    /**
     * 包装，只有当type = （咖啡豆、咖啡粉、挂耳咖啡）时，此属性才起作用
     * <p/>
     * 袋装、盒装、杯装、瓶装
     */
    private String packaging;
    /**
     * 等级，只有当type = （咖啡豆，咖啡粉、挂耳咖啡、成品）时，此属性才起作用
     * <p/>
     * （AA，A，B，C）
     */
    private String level;
    //详细介绍
    private String introduction;
    // 产地
    private String producingArea;
    //库存数量
    private int quantity;
    //价格
    private double price;
    /**
     * 风味
     * <p/>
     * 清淡，芳香，浓烈，狂野，香甜
     */
    private String tast;
    /**
     * 杯型，只有当type = （成品）时，此属性才会生效
     * <p/>
     * 大，中，小
     */
    private String cupSize;
    /**
     * 浓度，只有当type = （成品）时，此属性才会生效
     * <p/>
     * 淡泊，中等，高浓，脂状态
     */
    private String concentrations;
    /**
     * 材质，只有当type = （咖啡杯）时，此属性才会生效
     * <p/>
     * 金属，陶瓷，不锈钢，塑料
     */
    private String material;
    /**
     * 毛重，只有当type = （咖啡杯）时，此属性才会生效
     */
    private double weight;
    /**
     * 容量，只有当type = （咖啡杯）时，此属性才会生效
     */
    private double capacity;
    /**
     * 含糖量，，只有当type = （成品）时，此属性才会生效
     * <p/>
     * 无糖，低糖，中糖，高糖
     */
    private String sugar;
    /**
     * 是否含牛奶，只有当type = （成品）时，此属性才会生效
     */
    private boolean containsMilk;
    /**
     * 香料,，只有当type = （成品）时，此属性才会生效
     * <p/>
     * 肉桂，咳咳，豆蔻，薄荷，丁香
     * 柠檬，菠萝，香蕉
     * 白兰地，威士忌，兰姆酒，薄荷利口酒
     */
    private String spice;
    /**
     * 咖啡机类别，只有当type = （咖啡机）时，此属性才会生效
     * <p/>
     * 全自动，泵压式，手动式
     */
    private String makerType;
    /**
     * 功率，只有当type = （咖啡机）时，此属性才会生效
     */
    private int power;
    //好评数
    private int good;
    //中评数
    private int ordinary;
    //差评数
    private int bad;
    //商品所有图图片的路径
    private List<String> paths;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getPackaging() {
        return packaging;
    }

    public void setPackaging(String packaging) {
        this.packaging = packaging;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getProducingArea() {
        return producingArea;
    }

    public void setProducingArea(String producingArea) {
        this.producingArea = producingArea;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getTast() {
        return tast;
    }

    public void setTast(String tast) {
        this.tast = tast;
    }

    public String getCupSize() {
        return cupSize;
    }

    public void setCupSize(String cupSize) {
        this.cupSize = cupSize;
    }

    public String getConcentrations() {
        return concentrations;
    }

    public void setConcentrations(String concentrations) {
        this.concentrations = concentrations;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public double getCapacity() {
        return capacity;
    }

    public void setCapacity(double capacity) {
        this.capacity = capacity;
    }

    public String getSugar() {
        return sugar;
    }

    public void setSugar(String sugar) {
        this.sugar = sugar;
    }

    public boolean isContainsMilk() {
        return containsMilk;
    }

    public void setContainsMilk(boolean containsMilk) {
        this.containsMilk = containsMilk;
    }

    public String getSpice() {
        return spice;
    }

    public void setSpice(String spice) {
        this.spice = spice;
    }

    public String getMakerType() {
        return makerType;
    }

    public void setMakerType(String makerType) {
        this.makerType = makerType;
    }

    public int getPower() {
        return power;
    }

    public void setPower(int power) {
        this.power = power;
    }

    public int getGood() {
        return good;
    }

    public void setGood(int good) {
        this.good = good;
    }

    public int getOrdinary() {
        return ordinary;
    }

    public void setOrdinary(int ordinary) {
        this.ordinary = ordinary;
    }

    public int getBad() {
        return bad;
    }

    public void setBad(int bad) {
        this.bad = bad;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public List<String> getPaths() {
        return paths;
    }

    public void setPaths(List<String> paths) {
        this.paths = paths;
    }
}

package model;

public class Bakery {

    private String name;
    private String type;
    private String[] nutrient;
    private String sweet;
    private String toping;
    private String detail;
    private int price;

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the type
     */
    public String getType() {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * @return the nutrient
     */
    public String[] getNutrient() {
        return nutrient;
    }

    /**
     * @param nutrient the nutrient to set
     */
    public void setNutrient(String[] nutrient) {
        this.nutrient = nutrient;
    }
    public String getSweet() {
        return sweet;
    }

    
    public void setSweet(String sweet) {
        this.sweet = sweet;
    }
     public String getToping() {
        return toping;
    }

    
    public void setToping(String toping) {
        this.toping = toping;
    }
    
    public String getDetail() {
        return detail;
    }

    
    public void setDetail(String detail) {
        this.detail = detail;
    }

    /**
     * @return the price
     */
    public int getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(int price) {
        this.price = price;
    }

}

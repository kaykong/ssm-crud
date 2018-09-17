package top.kongk.ssmcrud.utils;

import java.util.HashMap;
import java.util.Map;

public class Msg {
    //100成功 200失败
    private int codeNum;

    //提示信息
    private String message;

    private Map map = new HashMap<String,Object>();

    public static Msg success() {
        Msg msg = new Msg();
        msg.setCodeNum(100);
        msg.setMessage("处理成功");
        return msg;
    }

    public static Msg fail() {
        Msg msg = new Msg();
        msg.setCodeNum(200);
        msg.setMessage("处理失败");
        return msg;
    }

    public Msg addMap(Map map) {
        this.setMap(map);
        return this;
    }

    public int getCodeNum() {
        return codeNum;
    }

    public void setCodeNum(int codeNum) {
        this.codeNum = codeNum;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Map getMap() {
        return map;
    }

    public void setMap(Map map) {
        this.map = map;
    }
}

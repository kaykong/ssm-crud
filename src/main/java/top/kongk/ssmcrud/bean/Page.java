package top.kongk.ssmcrud.bean;

import java.util.List;


public class Page<T> {

    /*构造函数所必须的*/
    private int currPage;//当前页数
    private int pageSize;//每页显示的记录数
    private int totalCount;//总记录数
    private int start; //数据库开始的位置

    private int totalPage;//总页数
    private List<T> lists;//每页的显示的数据

    private boolean isFirst;// 是否是首页
    private boolean hasPre;// 是否有前一页
    private boolean hasNext;// 是否有下一页
    private boolean isLast;// 是否是最后一页


    //默认返回5个页码
    private int[] pageNums;


    //构造函数中已经把sql中的起始坐标start确定了
    public Page(int currPage, int pageSize, int totalCount) {
        int NUM = 5;
        this.currPage = currPage;
        this.pageSize = pageSize;
        this.totalCount = totalCount;
        this.start = (currPage - 1) * pageSize;

        //传来的当前页数大于记录的总页数, 那么就把最后一页数据返回
        this.totalPage = getTotalPage();
        if (this.currPage > this.totalPage && this.totalPage > 0) {
            this.currPage = this.totalPage;
        }
        //把start更新,更新start需要currPage
        setCurrPage(this.currPage);

        //初始化要返回的页码数组
        initPageNums(NUM);
    }

    private void initPageNums(int NUM) {

        //获取总记录数
        int totalPageNum = getTotalPage();

        if (totalPageNum < 1 || currPage > totalPageNum)
            return;

        //生成返回的页码数组

        //1.总页数小于要返回的页码的个数, 例如总共有3页, 却要返回5个数字
        if (totalPageNum < NUM) {
            this.pageNums = new int[totalPageNum];
            for (int i = 0; i < totalPageNum; ++i) {
                pageNums[i] = i + 1;
            }
        } else {
            //2.总页数大于要返回的页码的个数, 例如总共有40页, 却要返回5个数字

            //这种情况下肯定能返回足够的页码
            this.pageNums = new int[NUM];

            //判断当前页在哪个位置
            if (currPage <= (NUM / 2 + 1)) {
                // 1 2 3 4 5, 如果当前页是 1 2 3, 那么
                for (int i = 0; i < NUM; ++i) {
                    pageNums[i] = i + 1;
                }
            } else if (currPage >= (totalPageNum - NUM / 2 )) {
                //36 37 38 39 40,如果当前页是 38 39 40, 那么
                for (int i = 0; i < NUM; ++i) {
                    pageNums[i] = totalPageNum - NUM + i + 1;
                }
            }else {
                //此时就是大众的页码了,例如当前页为5,那么返回 3 4 5 6 7
                int firstNum = currPage - NUM / 2;
                for (int i = 0; i < NUM; ++i) {
                    pageNums[i] = firstNum++;
                }
            }

        }

    }

    public int[] getPageNums() {

        return pageNums;
    }

    public void setPageNums(int[] pageNums) {
        this.pageNums = pageNums;
    }

    public int getCurrPage() {
        return currPage;
    }

    public void setCurrPage(int currPage) {
        this.currPage = currPage;
        this.start = (currPage - 1) * pageSize;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
        this.start = (currPage - 1) * pageSize;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    //取得总页数，总页数=总记录数/总页数(向上取整), 最少有一页(即使无数据)
    public int getTotalPage() {

        totalPage = getTotalCount() / getPageSize();

        return (getTotalCount() % getPageSize()) == 0 ? totalPage
                : totalPage + 1;
    }

    public List<T> getLists() {
        return lists;
    }

    public void setLists(List<T> lists) {
        this.lists = lists;
    }

    //是否是首页,如果此页是首页就没有
    public boolean isFirst() {
        return currPage == 1;
    }

    //是否是尾页, 判断当前页是否是最后一页
    public boolean isLast() {
        return getCurrPage() == getTotalPage();
    }

    //是否有前一页, 如果不是首页就有
    public boolean isHasPre() {
        return !isFirst();
    }

    //是否有下一页, 如果此页是尾页就没有下一页
    public boolean isHasNext() {
        return !isLast();
    }

}

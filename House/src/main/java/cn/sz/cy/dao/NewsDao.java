package cn.sz.cy.dao;

import java.util.HashMap;
import java.util.List;

import cn.sz.cy.pojo.News;

public interface NewsDao {
    public List<News> SelectAllNews();
    public List<News> selectByPage(HashMap <String,Object> map);
    public int selectCount();
    public void delete(Integer id);
    public void addNews(News news);
}

package com.newer.service;

import com.newer.domain.CheckIn;
import com.newer.mapper.CheckinMapper;
import com.newer.mapper.RoomMapper;
import com.newer.util.SqlSessionUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

/**
 * @author worldmin
 */
public class CheckinService {

    private SqlSession sqlSession;
    private CheckinMapper checkinMapper;
    private RoomMapper roomMapper;

    private void init(){
        sqlSession= SqlSessionUtil.getSqlSession();
        checkinMapper=sqlSession.getMapper(CheckinMapper.class);
        roomMapper=sqlSession.getMapper(RoomMapper.class);
    }

    public List<CheckIn> findAll(){
        init();
        List<CheckIn> list=checkinMapper.findAll();
        SqlSessionUtil.close(sqlSession);
        return list;
    }

    public void update(int cid,int totalprice,int roomid){
        //房间结账事务：1.完成入住信息结账修改，2.释放房间状态
        init();
        checkinMapper.update(cid,totalprice);
        roomMapper.update(roomid,1);
        sqlSession.commit();
        SqlSessionUtil.close(sqlSession);
    }
}

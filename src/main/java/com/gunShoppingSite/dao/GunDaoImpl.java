package com.gunShoppingSite.dao;

import com.gunShoppingSite.model.Gun;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.List;

public class GunDaoImpl implements GunDao {

    JdbcTemplate jdbcTemplate;

    public JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

//Insert implementation
        @Override
        public int addGun (Gun gun)
        {
            String str = "insert into gun values('" + gun.getId() + "','" + gun.getGunName() + "','" + gun.getDescription() + "','" + gun.getPriceInr() + "','" + gun.getPriceUsd() + "','" + gun.getScope() + "')";

            return getJdbcTemplate().update(str);
        }


        //Delete implementation
    @Override
    public int deleteGun(int id)
    {
        String del="delete from gun where id="+id+"";
        return jdbcTemplate.update(del);
    }

    //GetById implementation
    @Override
    public Gun getGunDataById(int id)
    {
        String str="select * from gun where id=?";

        Gun gun= (Gun) getJdbcTemplate().queryForObject(str,new BeanPropertyRowMapper<>(Gun.class),id);

        return gun;
    }


    //Update Implementation
    @Override
    public int updateGunData(Gun g)
    {
        String str="update gun set id='"+g.getId()+"',gunName='"+g.getGunName()+"',description='"+g.getDescription()+"',scope='"+g.getScope()+"',priceInr='"+g.getPriceInr()+"',priceUsd='"+g.getPriceUsd()+"' where id='"+g.getId()+"'";

        return jdbcTemplate.update(str);
    }


    //Retrieve all data implemetation
    @Override
    public List<Gun> allGunData()
    {
        String allGun="select * from gun";
        List<Gun> list=jdbcTemplate.query(allGun, new RowMapper<Gun>() {
            @Override
            public Gun mapRow(ResultSet resultSet, int i) throws SQLException {

                Gun gun= new Gun();
                gun.setId(resultSet.getInt(1));
              gun.setGunName(resultSet.getString(2));
                gun.setDescription(resultSet.getString(3));
                gun.setPriceInr(resultSet.getFloat(4));
                gun.setPriceUsd(resultSet.getFloat(5));
                gun.setScope( resultSet.getString(6));

                return gun;
            }
        });
        return list;
    }
}

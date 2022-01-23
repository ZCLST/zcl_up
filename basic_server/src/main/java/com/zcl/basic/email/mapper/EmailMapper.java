package com.zcl.basic.email.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zcl.basic.email.model.Email;
import org.springframework.stereotype.Repository;

/**

 * @author  zcl

 * @create  2022/1/22 15:05

 * @desc    信件持久层

 **/
@Repository
public interface EmailMapper extends BaseMapper<Email> {

}

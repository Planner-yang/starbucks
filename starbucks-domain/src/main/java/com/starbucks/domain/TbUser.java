package com.starbucks.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.starbucks.commons.utils.RegexpUtils;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.Pattern;
import java.io.Serializable;

/**
 * @ author xwj
 * @ date 2018/8/30 20:38
 */
@Data
@EqualsAndHashCode(callSuper=true)
public class TbUser extends BaseEntity implements Serializable {
    @Length(min = 6, max = 20, message = "用户名长度必须介于 6 和 20 之间")
    private String username;

    @JsonIgnore
    @Length(min = 6, max = 20, message = "密码长度必须介于 6 和 20 之间")
    private String password;
    @Pattern(regexp = RegexpUtils.PHONE, message = "手机号格式不正确")
    private String phone;
    @Pattern(regexp = RegexpUtils.EMAIL, message = "邮箱格式不正确")
    private String email;

    //拓展属性
    private String autoLogin;
    private String rememberMe;
}

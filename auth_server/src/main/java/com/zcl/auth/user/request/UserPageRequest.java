package com.zcl.auth.user.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserPageRequest {
    
    private String userName;
    
    private String roleId;
    
    private Integer pageIndex;
    
    private Integer pageSize;
}

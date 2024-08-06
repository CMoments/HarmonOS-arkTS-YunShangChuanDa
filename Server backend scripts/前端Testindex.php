<?php  
// 设置返回的内容类型为JSON  
header('Content-Type: application/json; charset=UTF-8');
  

$departments = [  
    [  
        'name' => '唐袁庆',  
        'id' => '',
        'phone'=>''
    ],  
    [  
        'name' => '董海玄',  
        'id' => '',
        'phone'=>''
    ],  
    [  
        'name' => '蓝鑫',  
        'id' => '',
        'phone'=>''
    ],  
    [  
        'name' => '牟奕铭',  
        'id' => '',
        'phone'=>''
    ],  
    [  
        'name' => '黄浩然',  
        'id' => '',
        'phone'=>''
    ],  
    [  
        'name' => '封俊',  
        'id' => '',
        'phone'=>''
    ],  
    [  
        'name' => '潘韵泽',  
        'id' => '',
        'phone'=>''
    ]  
];  
  
// 将数组转换为JSON格式并输出  
echo json_encode([  
    'code' => 200,  
    'msg' => '查询成功',  
    'data' => $departments  
], JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);  
?>

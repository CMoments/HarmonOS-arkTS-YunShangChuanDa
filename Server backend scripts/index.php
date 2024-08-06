<?php  
// 数据库配置  
$host = '43.242.201.154'; 
$dbname = 'stu';  
$username = 'root'; 
$password = '123456';  
  
try {  
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password, [  
        PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,  
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,  
        PDO::ATTR_EMULATE_PREPARES   => false,  
        PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8mb4"  
    ]);  

    $sql = "SELECT * FROM employees";  
    $stmt = $pdo->query($sql);  
    if ($stmt->rowCount() > 0) {  
        
        header('Content-Type: application/json; charset=UTF-8');  
  
        $employees = $stmt->fetchAll();  
  
        echo json_encode([  
            'code' => 200,  
            'msg' => '查询成功',  
            'data' => $employees  
        ], JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);  
    } else {  
        header('Content-Type: application/json; charset=UTF-8');  
        echo json_encode([  
            'code' => 404,  
            'msg' => '未找到数据',  
            'data' => []  
        ], JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);  
    }  
} catch (PDOException $e) {  
    
    header('Content-Type: application/json; charset=UTF-8');  
    echo json_encode([  
        'code' => 500,  
        'msg' => '错误: ' . $e->getMessage(),  
        'data' => []  
    ], JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);  
}  
?>
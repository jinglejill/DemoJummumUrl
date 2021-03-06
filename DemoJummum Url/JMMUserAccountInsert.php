<?php
    include_once("dbConnect.php");
    setConnectionValue("");
    writeToLog("file: " . basename(__FILE__) . ", user: " . $_POST["modifiedUser"]);
    printAllPost();
    isNeedUpdateVersion();
    
    
    if(isset($_POST["userAccountID"]) && isset($_POST["username"]) && isset($_POST["password"]) && isset($_POST["deviceToken"]) && isset($_POST["firstName"]) && isset($_POST["lastName"]) && isset($_POST["fullName"]) && isset($_POST["nickName"]) && isset($_POST["birthDate"]) && isset($_POST["email"]) && isset($_POST["phoneNo"]) && isset($_POST["lineID"]) && isset($_POST["roleID"]) && isset($_POST["modifiedUser"]) && isset($_POST["modifiedDate"]))
    {
        $userAccountID = $_POST["userAccountID"];
        $username = $_POST["username"];
        $password = $_POST["password"];
        $deviceToken = $_POST["deviceToken"];
        $firstName = $_POST["firstName"];
        $lastName = $_POST["lastName"];
        $fullName = $_POST["fullName"];
        $nickName = $_POST["nickName"];
        $birthDate = $_POST["birthDate"];
        $email = $_POST["email"];
        $phoneNo = $_POST["phoneNo"];
        $lineID = $_POST["lineID"];
        $roleID = $_POST["roleID"];
        $modifiedUser = $email;
        $modifiedDate = $_POST["modifiedDate"];
    }
    
    
    
    // Check connection
    if (mysqli_connect_errno())
    {
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }
    
    
    
    // Set autocommit to off
    mysqli_autocommit($con,FALSE);
    writeToLog("set auto commit to off");
    
    
    
    //query statement
    $sql = "INSERT INTO UserAccount(Username, Password, DeviceToken, FirstName, LastName, FullName, NickName, BirthDate, Email, PhoneNo, LineID, RoleID, ModifiedUser, ModifiedDate) VALUES ('$username', '$password', '$deviceToken', '$firstName', '$lastName', '$fullName', '$nickName', '$birthDate', '$email', '$phoneNo', '$lineID', '$roleID', '$modifiedUser', '$modifiedDate')";
    $ret = doQueryTask($sql);
    if($ret != "")
    {
        mysqli_rollback($con);
//        putAlertToDevice();
        echo json_encode($ret);
        exit();
    }
    
    
    
    
    //do script successful
    mysqli_commit($con);
    mysqli_close($con);
    
    
    
    writeToLog("query commit, file: " . basename(__FILE__) . ", user: " . $_POST['modifiedUser']);
    $response = array('status' => '1', 'sql' => $sql);
    echo json_encode($response);
    exit();
?>

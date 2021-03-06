<?php
    include_once("dbConnect.php");
    setConnectionValue("");
    writeToLog("file: " . basename(__FILE__) . ", user: " . $_POST["modifiedUser"]);
    printAllPost();
    
    
    
    if(isset($_POST["memberID"]))
    {
        $memberID = $_POST["memberID"];
    }
    if(isset($_POST["rewardPointID"]) && isset($_POST["modifiedDate"]))
    {
        $rewardPointID = $_POST["rewardPointID"];
        $modifiedDate = $_POST["modifiedDate"];
    }
    
    
    
    // Check connection
    if (mysqli_connect_errno())
    {
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }
    
    
    $currentDateTime = date('Y-m-d H:i:s');
    $sql = "SELECT rewardpoint.* FROM `rewardpoint` left join promoCode on rewardPoint.promoCodeID = promoCode.promoCodeID left join RewardRedemption on promocode.rewardRedemptionID = RewardRedemption.rewardRedemptionID WHERE MemberID = '$memberID' and rewardpoint.status = -1 and promoCode.status = 2 and rewardPoint.modifiedDate <= '$modifiedDate' and rewardPoint.RewardPointID < '$rewardPointID' order by promoCode.modifiedDate desc limit 10;";
    $sql .= "SELECT promoCode.* FROM `rewardpoint` left join promoCode on rewardPoint.promoCodeID = promoCode.promoCodeID left join RewardRedemption on promocode.rewardRedemptionID = RewardRedemption.rewardRedemptionID WHERE MemberID = '$memberID' and rewardpoint.status = -1 and promoCode.status = 2 and rewardPoint.modifiedDate <= '$modifiedDate' and rewardPoint.RewardPointID < '$rewardPointID' order by promoCode.modifiedDate desc limit 10;";
    $sql .= "SELECT RewardRedemption.* FROM `rewardpoint` left join promoCode on rewardPoint.promoCodeID = promoCode.promoCodeID left join RewardRedemption on promocode.rewardRedemptionID = RewardRedemption.rewardRedemptionID WHERE MemberID = '$memberID' and rewardpoint.status = -1 and promoCode.status = 2 and rewardPoint.modifiedDate <= '$modifiedDate' and rewardPoint.RewardPointID < '$rewardPointID' order by promoCode.modifiedDate desc limit 10";
    
    
    
    
    /* execute multi query */
    $jsonEncode = executeMultiQueryArray($sql);
    $response = array('success' => true, 'data' => $jsonEncode, 'error' => null, 'status' => 1);
    echo json_encode($response);
    
    
    
    // Close connections
    mysqli_close($con);
?>

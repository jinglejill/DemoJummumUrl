<?php
    include_once("dbConnect.php");
    setConnectionValue("");
    writeToLog("file: " . basename(__FILE__) . ", user: " . $_POST["modifiedUser"]);
    printAllPost();
    ini_set("memory_limit","-1");
    
    
    
    
    if(isset($_POST["searchText"]) && isset($_POST["page"]) && isset($_POST["perPage"]) && isset($_POST["memberID"]))
    {
        $searchText = $_POST["searchText"];
        $page = $_POST["page"];
        $perPage = $_POST["perPage"];
        $memberID = $_POST["memberID"];
    }
    
    
    
    // Check connection
    if (mysqli_connect_errno())
    {
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }
    
    $searchText = trim($searchText);
    $strPattern = getRegExPattern($searchText);
    $sql = "select * from (select @rownum := @rownum + 1 AS Num, c.* from (select ifnull(sum(a.Frequency),0) Frequency,ifnull(sum(b.Sales),0) Sales, promotion.PromotionID, promotion.MainBranchID,promotion.Type,promotion.Header,promotion.SubTitle,promotion.TermsConditions,promotion.ImageUrl,promotion.OrderNo,promotion.DiscountGroupMenuID,promotion.VoucherCode from promotion left join promotionbranch ON promotion.PromotionID = promotionbranch.PromotionID left join (select branchID,count(*) as Frequency from receipt where memberID = '$memberID' GROUP BY branchID) a on promotionbranch.BranchID = a.branchID left join (select branchID,SUM(CashAmount+CreditCardAmount+TransferAmount) Sales from receipt where memberID = '$memberID' GROUP BY branchID) b on promotionbranch.BranchID = b.branchID where promotion.status = 1 and date_format(now(),'%Y-%m-%d') between date_format(promotion.startDate,'%Y-%m-%d') and date_format(promotion.endDate,'%Y-%m-%d') and ((promotionbranch.BranchID in (select distinct branchID from receipt where memberID = '$memberID' and promotion.type = 1)) or promotion.type = 0) and (promotion.NoOfLimitUsePerUser = 0 or promotion.NoOfLimitUsePerUser > (select count(*) from userPromotionUsed where promotionID = promotion.promotionID and userAccountID = '$memberID')) and (Header rlike '$strPattern' or SubTitle rlike '$strPattern' or TermsConditions rlike '$strPattern') GROUP BY promotion.PromotionID, promotion.MainBranchID,promotion.Type,promotion.Header,promotion.SubTitle,promotion.TermsConditions,promotion.ImageUrl,promotion.OrderNo,promotion.DiscountGroupMenuID,promotion.VoucherCode order by promotion.Type,sum(a.Frequency)desc,sum(b.Sales)desc,promotion.OrderNo) c,(SELECT @rownum := 0) r)d where Num > $perPage*($page-1) limit $perPage;";

    
    
    /* execute multi query */
    $jsonEncode = executeMultiQueryArray($sql);
    $response = array('success' => true, 'data' => $jsonEncode, 'error' => null, 'status' => 1);
    echo json_encode($response);


    
    // Close connections
    mysqli_close($con);
    
?>

<?php
    include_once("dbConnect.php");
    setConnectionValue("");
    writeToLog("file: " . basename(__FILE__) . ", user: " . $_POST["modifiedUser"]);
    printAllPost();
    ini_set("memory_limit","-1");
    
    
    
    if(isset($_POST["branchID"]))
    {
        $branchID = $_POST["branchID"];
    }
    
    
    // Check connection
    if (mysqli_connect_errno())
    {
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }
    
    
    $sql = "select * from $jummumOM.branch where BranchID = '$branchID'";
    $selectedRow = getSelectedRow($sql);
    $dbName = $selectedRow[0]["DbName"];
    
    
    //get customer order status from branch
    $sql = "select * from $dbName.Setting where keyName = 'customerOrderStatus'";
    $selectedRow = getSelectedRow($sql);
    $customerOrderStatus = $selectedRow[0]["Value"];
    
    
    $inOpeningTime = 0;
    if($customerOrderStatus == 1)
    {
        $inOpeningTime = 1;
    }
    else if($customerOrderStatus == 2)
    {
        $inOpeningTime = 0;
    }
    else
    {
        //get today's opening time**********
        $strDate = date("Y-m-d");
        $currentDate = date("Y-m-d H:i:s");
        $dayOfWeek = date('w', strtotime($strDate));
        $sql = "select * from $dbName.OpeningTime where day = '$dayOfWeek' order by day,shiftNo";
        $selectedRow = getSelectedRow($sql);
        
        for($i=0; $i<sizeof($selectedRow); $i++)
        {
            $day = $selectedRow[$i]["Day"];
            $startTime = $selectedRow[$i]["StartTime"];
            $endTime = $selectedRow[$i]["EndTime"];
            
            
            
            $intStartTime = intVal(str_replace(":","",$startTime));
            $intEndTime = intVal(str_replace(":","",$endTime));
            if($intStartTime < $intEndTime)
            {
                $startDate = date($strDate . " " . $startTime . ":00");
                $endDate = date($strDate . " " . $endTime . ":00");
                if($startDate<=$currentDate && $currentDate<=$endDate)
                {
                    $inOpeningTime = 1;
                }
            }
            else
            {
                $nextDate = date("Y-m-d", strtotime($strDate. ' + 1 days'));
                $startDate = date($strDate . " " . $startTime . ":00");
                $endDate = date($nextDate . " " . $endTime . ":00");
                if($startDate<=$currentDate && $currentDate<=$endDate)
                {
                    $inOpeningTime = 1;
                }
            }
        }
    }
    //*********
    
    
    
    
    //check if use mainBranch menu or own menu
    $sql = "select * from $jummumOM.branch where branchID = '$branchID'";
    $selectedRow = getSelectedRow($sql);
    if($selectedRow[0]["BranchID"] != $selectedRow[0]["MainBranchID"])
    {
        $mainBranchID = $selectedRow[0]["MainBranchID"];
        $sql = "select * from $jummumOM.branch where branchID = '$mainBranchID'";
        $selectedRow = getSelectedRow($sql);
        $dbName = $selectedRow[0]["DbName"];
    }
    
    
    
    
    
    if($inOpeningTime)
    {
        $sql = "select 1 as Text;";
    }
    else
    {
        $sql = "select 0 as Text;";
    }
    $sql .= "select '$branchID' BranchID, menu.* from $dbName.menu where Status = 1 and alacarteMenu = 1;";
    $sql .= "select distinct '$branchID' BranchID, menuType.`MenuTypeID`, `Name`, `NameEn`, `AllowDiscount`, menuType.`OrderNo` from $dbName.menu left join $dbName.menuType on menu.menuTypeID = menuType.menuTypeID where menu.Status = 1 and menuType.Status = 1 and alacarteMenu = 1;";
    $sql .= "select '$branchID' BranchID, note.* from $dbName.note where Status = 1;";
    $sql .= "select '$branchID' BranchID, '$branchID' BranchID, notetype.* from $dbName.notetype where Status = 1;";
    $sql .= "select '$branchID' BranchID, specialPriceProgram.* from $dbName.specialPriceProgram where date_format(now(),'%Y-%m-%d') between date_format(startDate,'%Y-%m-%d') and date_format(endDate,'%Y-%m-%d');";


    /* execute multi query */
    $jsonEncode = executeMultiQueryArray($sql);
    $response = array('success' => true, 'data' => $jsonEncode, 'error' => null, 'status' => 1);
    echo json_encode($response);


    
    // Close connections
    mysqli_close($con);
    
?>

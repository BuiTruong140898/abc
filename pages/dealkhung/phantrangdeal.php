<?php require('../mysql/conn.php')?>
            <div class="card-header">
                    <h4><i class="fa fa-table"></i> Deal khủng</h4>
                   
            </div>
            <div>
            	<?php 
            	$rows=laydealkhung();
              $sodealkhung=mysqli_num_rows($rows);
              $sotrang=ceil($sodealkhung/6);
              if(isset($_GET['trang']))
                $trang=$_GET['trang'];
              else
                $trang=1;
              $rows=laydealkhungphantrang($trang);
            	while ($row=mysqli_fetch_assoc($rows)) {
            		ob_start(); 


            	 ?>
            	<div class="col-lg-4 col-md-6 ">
            		<div class="panel panel-default">
                        
                        <!-- /.panel-heading -->
                        <div class="panel-body" align="center" style="padding: auto">
                            <div class="list-group" >
                             <img src="{hinh}" height="270" width="315">
                                
                            </div>
                            <!-- /.list-group -->
                            <p style="height: 40px">{tendealkhung}</p>
                        </div>
                        <!-- /.panel-body -->
                        <div class="panel-heading" align="center" >
                            <a class="deal" href=""> {mota}</a>
                        </div>
                    </div>
            	</div>
            	<?php 
            	$s = ob_get_clean();
                $s = str_replace("{tendealkhung}", $row['tendealkhung'], $s);
                $s = str_replace("{hinh}", $row['hinh'], $s);
                $s = str_replace("{mota}", $row['mota'], $s);
                echo $s;

            }?>
            		
            </div>

             <div style="float: left; width:100%" align="center" style="">
               <?php
            for ($i=1; $i <= $sotrang; $i++) { 
               
              
            ?>
            <button onclick="phantrang(this.value)" value="<?php echo $i ?>" style="background-color: <?php if($i==$trang) echo("gray") ?>"><?php echo $i?></button>
            <?php 
            } ?>

            </div>
           
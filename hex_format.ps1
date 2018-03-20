



    $text = Get-Content D:\baltimore.hex
$cnt =0
$tcnt =0
    While ($text)
    { 
      $x,$text = ([char[]]$text).where({$_},'Split',2)
      $z= "0x"+ $x[0] +$x[1]+","
      #Write-Output $z.replace("\n","")
      if($cnt -gt 11)
      {
        Add-Content 'D:\cert.txt' ""
        $cnt=0
      }
      $cnt = $cnt+1
      Add-Content 'D:\cert.txt' $z.replace("\n","") -NoNewline
      $tcnt = $tcnt+1
    }
    Add-Content 'D:\cert.txt' $tcnt


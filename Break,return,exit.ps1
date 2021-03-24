#The break statement provides a way to exit(loop)
function test_break {
   $i=0
   while ($true) {
       if ($i+=1 -le 8) {
           break
       }
       Write-Output $i
   }    
write-output "Finished testing break"
    
    
}

#Return
function test_return {
    $i=0
    while ($true) {
        if ($i++ -ge 8) {
            Return
        }
        Write-Output $i
    }    
 write-output "Finished testing break"
     
     
 }

 #Exit
#Exit terminates the current powershell session.
 function test_exit {
    $i=0
    while ($true) {
        if ($i++ -ge 8) {
            Start-Sleep -Seconds 5
            exit
        }
        Write-Output $i
    }    
 write-output "Finished testing break"
     
     
 }
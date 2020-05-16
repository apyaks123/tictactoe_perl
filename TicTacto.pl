#!/usr/bin/perl
# Library used
use warnings;
use strict;
use File::Slurp;

$| =1;
# Global variable 
#my ($x,$xxx,$y,$yy,$yyy,$z,$zz,$zzz) = 1;
my $x = '';
my $xx = '';
my $xxx = '';
my $y = '';
my $yy = '';
my $yyy = '';
my $z = '';
my $zz = '';
my $zzz = '';
my $player1;
my $player2;
my $complete = 0;
my $full = 0;


my $scanner = 0;
my $input = 0;
my $empty = 0;

my $value1;
my $value2;
my $value3;
my $value4;
my $value5;
my $value6;
my $value7;
my $value8;
my $value9;






sub menu
{

    print("\nWelcome to TicTacToe Perl Game\n");
    print("\n-----------------------------------\n");
    print("\nEnter 0 to use O or enter 1 to use X: ");
    my $keyboard = <STDIN>;
    print($keyboard);
    if ($keyboard == 0)
    {
        $player1 = "O";
        $player2 = "X";
       
    }
    elsif ($keyboard == 1)
    {
        $player1 = "X";
        $player2 = "O";
        
    }
    else {
        print("Please enter key from 0-1 to use 0 or X. thank you!!");
        menu();
    }
    print("Please enter 0 to play with computer, 1 for a multiplayer:\n");
    my $File = <STDIN>;
    #chomp $File;
    print($File);
    if ($File == 0)
    {
         easy();
    }
    elsif ($File == 1)
    {
    
        medium();
        
    }
    
    else 
    {
        print("\nPlease enter from 0-1 to select single player or multiplayer and try again. Thank you!!!");
        menu();
    
    
    }
    
    
    

}
sub easy
{
    print("\nLets get started for an easy route.\n");
    print("\nPlayer1 value: ",$player1);
    print("\nPlayer2 value: ", $player2);
    print("\n");
    #my $random_number = rand(100);
    #print("balue of random $random_number");
    #if ($random_number <= 100)
    #{
    
        while(!isFull())
        {
        
        while ( !checker())
        {
        
        print("\n");
        print($complete);
        print("hello");
        print("\n");
        print("\n");
        playerPick();
        display();
        
        computerPick();
        display();
        }
        
        }
        
    
    
        
     

}

# two player code
sub medium {

    print("\nPlayer1 value: ",$player1);
    print("\nPlayer2 value: ", $player2);
    
    
     while(!isFull())
        {
        
        while (!checker())
        {
        
        print("\n");
        print($complete);
        print("hello");
        print("\n");
        print("\n");
        playerPick();
        display();
        
        playerPick2();
        display();
        }
        
        }
    
    



}







# To display into the screen
sub display
{
  
    print("\n");
    print($x , "\t" , "|", "\t", $xx, "\t", "|", $xxx);
    #print($xx, "\t", "|", $xxx, "\t");
    print("\n");
    print("_________________________________________\n");
    print($y , "\t" , "|", "\t", $yy, "\t", "|", $yyy);
    #print($xx, "\t", "|", $xxx, "\t");
    print("\n");
    print("_________________________________________\n");
    #print("\n");
    #print("_________________________________________\n");
    print($z , "\t" , "|", "\t", $zz, "\t", "|", $zzz);
    #print($xx, "\t", "|", $xxx, "\t");
    print("\n");
    print("\n"); 
    


}
# To check if its player won  or not
sub checker
{
   if (((($x and $xx) and $xxx) eq "X") or ((($x and $yy) and $zzz) eq "X") or ((($x and $y) and $z) eq "X")
    or ((($xx and $yy) and $zz) eq "X")  or ((($xxx and $yyy) and $zzz) eq "X") or ((($xxx and $yy) and $z) eq "X")
    or ((($y and $yy) and $yyy) eq "X") or ((($z and $zz) and $zzz) eq "X")
    )
    {
        $complete = 1;
        if ($player1 eq "X"){
            print("\nCongratulations, $player1 is the winner\n");
            exit 56;
        }
        else {
        
            print("\nCongratulations, $player2 is the winner\n");
            exit 56;
        }
        
        
   
    }
    elsif (((($x and $xx) and $xxx) eq "O") or ((($x and $yy) and $zzz) eq "O") or ((($x and $y) and $z) eq "O")
    or ((($xx and $yy) and $zz) eq "O")  or ((($xxx and $yyy) and $zzz) eq "O") or ((($xxx and $yy) and $z) eq "O")
    or ((($y and $yy) and $yyy) eq "O") or ((($z and $zz) and $zzz) eq "O")
    )
    {
    
        
        $complete = 1;
        
        if ($player1 eq "O"){
            print("\nCongratulations, $player1 is the winner\n");
            exit 56;
        }
        else {
        
            print("\nCongratulations, $player2 is the winner\n");
            exit 56;
        }
        
        
    
    }


     


}

sub playerPick{
        print("\nAs per the Numbers press 1-9 to specify which block you want to insert into.\n");
        helpDisplay();
        print("\n------------------------------------------------------------------------------------\n");
        print("\nAs per above, press Numbers  1-9 to specify which block you want to insert into.\n");
        print("\n------------------------------------------------------------------------------------\n");
        display();
        $scanner = <STDIN>;
        #$x = 1;
        display();
        print("\n");
        print(length($x));
        if (!emptyChecker()){
            if ($scanner == 1)
            {
                $x = $player1;
                $value1 = 0;
            }
            elsif ($scanner == 2)
            {
                $xx = $player1;
                $value1 = 0;
            }
            elsif ($scanner == 3)
            {
                $xxx = $player1;
                $value1 = 0;
            }
            elsif ($scanner == 4)
            {
                $y = $player1;
                $value1 = 0;
            }
            elsif ($scanner == 5)
            {
                $yy = $player1;
                $value1 = 0;
            }
            elsif ($scanner == 6)
            {
                $yyy = $player1;
                $value1 = 0;
            }
            
            elsif ($scanner == 7)
            {
                $z = $player1;
                $value1 = 0;
            }
            elsif ($scanner == 8)
            {
                $zz = $player1;
                $value1 = 0;
            }
            elsif ($scanner == 9)
            {
                $zzz = $player1;
                $value1 = 0;
            }
            else
            {
                print("Please enter integer from 1-9");
                playerPick();
            }
            
            
        
        }
        
        #print("hello");


}

# player pick for 2nd player
sub playerPick2{
        print("\nAs per the Numbers press 1-9 to specify which block you want to insert into.\n");
        helpDisplay();
        print("\n------------------------------------------------------------------------------------\n");
        print("\nAs per above, press Numbers  1-9 to specify which block you want to insert into.\n");
        print("\n------------------------------------------------------------------------------------\n");
        display();
        $input = <STDIN>;
        #$x = 1;
        display();
        print("\n");
        print(length($x));
        if (!emptyCheker2()){
            if ($input == 1)
            {
                $x = $player2;
                $value1 = 0;
            }
            elsif ($input == 2)
            {
                $xx = $player2;
                $value1 = 0;
            }
            elsif ($input == 3)
            {
                $xxx = $player2;
                $value1 = 0;
            }
            elsif ($input == 4)
            {
                $y = $player2;
                $value1 = 0;
            }
            elsif ($input == 5)
            {
                $yy = $player2;
                $value1 = 0;
            }
            elsif ($input == 6)
            {
                $yyy = $player2;
                $value1 = 0;
            }
            
            elsif ($input == 7)
            {
                $z = $player2;
                $value1 = 0;
            }
            elsif ($input == 8)
            {
                $zz = $player2;
                $value1 = 0;
            }
            elsif ($input == 9)
            {
                $zzz = $player2;
                $value1 = 0;
            }
            else
            {
                print("Please enter integer from 1-9");
                playerPick2();
            }
            
            
        
        }
        
        #print("hello");


}







# To assist or computer pick
sub computerPick
{
            my $compPick1 =  int( rand(9)) + 1;
            print("\nComputer picked: \n");
            print($compPick1);
            
    
            if (($compPick1 eq 1) and (length($x) ne 1))
            {
                $x = $player2;
                $value1 = 1;
            }
            
            elsif (($compPick1 eq 2 ) and (length($xx) ne 1))
            {
                $xx = $player2;
                $value2 = 2;
            }
            elsif (($compPick1 eq 3 )  and (length($xxx) ne 1))
            {
                $xxx = $player2;
                $value3 = 3;
            }
            elsif (($compPick1 eq 4 ) and (length($y) ne 1))
            {
                $y = $player2;
                $value4 = 4;
            }
            elsif (($compPick1 eq 5 ) and  (length($yy) ne 1))
            {
                $yy = $player2;
                $value5 = 5;
            }
            elsif (($compPick1 == 6 ) and (length($yyy) ne 1))
            {
                $yyy = $player2;
                $value6 = 6;
            }
            
            elsif (($compPick1 == 7 ) and (length($z) ne 1))
            {
                $z = $player2;
                $value7 = 7;
            }
            elsif (($compPick1 == 8 ) and (length($yyy) ne 1))
            {
                $zz = $player2;
                $value8 = 8;
            }
            elsif (($compPick1 == 9 ) and (length($yyy) ne 1))
            {
                $zzz = $player2;
                $value9 = 9;
            }
            
            
           

}
# Computer emptyChecker









# To check if block is empty

sub emptyChecker
{
    if ((length($x) == 1 and $scanner == 1) or (length($xx) == 1 and $scanner == 2) or (length($xxx) == 1 and $scanner == 3)
    or (length($y) == 1 and $scanner == 4) or (length($yy) == 1 and $scanner == 5) or (length($yyy) == 1 and $scanner == 6)
    or (length($z) == 1 and $scanner == 7) or (length($zz) == 1 and $scanner == 8) or (length($zzz) == 1 and $scanner == 9)
    )
    {
        $empty = 1;
        print("Error, cannot enter player1 picked the number twice its booked");
        playerPick();
        
    }
#    if ((length($x) == 1 and $value1 == 1) or (length($xx) == 1 and $value2 = 2) or (length($xxx) == 1 and $value3 = 3)
#    or (length($y) == 1 and $value4 = 4) or (length($yy) == 1 and $value5 = 5) or (length($yyy) == 1 and $value6 = 6)
#    or (length($z) == 1 and $value7 = 7) or (length($zz) == 1 and $value8 = 8) or (length($zzz) == 1 and $value9= 9)
#    )
#    {
#      
#        $empty = 2;
#        print("\nError, cannot enter the computer picked number twice its booked\n");
#         computerPick();
#       
#        
#    }
    
    
    
    
    
    
    
 


}

# for second player
sub emptyCheker2 {
if ((length($x) == 1 and $input == 1) or (length($xx) == 1 and $input == 2) or (length($xxx) == 1 and $input == 3)
    or (length($y) == 1 and $input == 4) or (length($yy) == 1 and $input == 5) or (length($yyy) == 1 and $input == 6)
    or (length($z) == 1 and $input == 7) or (length($zz) == 1 and $input == 8) or (length($zzz) == 1 and $input == 9)
    )
    {
        $empty = 1;
        print("Error, cannot enter player2 picked the number twice its booked");
        playerPick2();
        
    }

}



# To check if block is full

sub isFull
{
    if (length($x) and length($xx) and length($xxx) and length($y) and length($yy) and length($yyy) and length($z) and length($zz) and length($zzz) == 1)
    {
    
    print ("\nIs Full\n");
    $full = 1;
    
    }
    


}




# Helper display

sub helpDisplay{
    print("\n");
    print(1 , "\t" , "|", "\t", 2, "\t", "|", 3);
    #print($xx, "\t", "|", $xxx, "\t");
    print("\n");
    print("_________________________________________\n");
    print(4 , "\t" , "|", "\t", 5, "\t", "|", 6);
    #print($xx, "\t", "|", $xxx, "\t");
    print("\n");
    print("_________________________________________\n");
    #print("\n");
    #print("_________________________________________\n");
    print(7 , "\t" , "|", "\t", 8, "\t", "|", 9);
    #print($xx, "\t", "|", $xxx, "\t");
    print("\n");
    print("\n");    
    
    
    


}














sub main{

    menu();
    

}


main();

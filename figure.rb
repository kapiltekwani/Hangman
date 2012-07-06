module FIGURE
def figure0
	puts " -----------"
	puts " |         |"
end

def figure1
	figure0			
	print" | ";print"      ";print" _";print"|";puts"_ "
	print" | ";print"      ";print"(>";print" ";puts"<)"   
	print" | ";print"      ";print"  ";puts"-" 
end

def figure2
	figure1
	print" | ";print"      ";print"  ";puts"|" 
end	

def figure3
	figure2
	print" | ";print"      ";print"";print"\\_|" 

end
def figure4
	figure3
	puts"_/" 
	end

def figure5
	figure4
	puts" |         |"   
end

def figure6
	figure5
	print" |        / " 
end
	
def figure7
	figure6
  puts"\\" 
end
end

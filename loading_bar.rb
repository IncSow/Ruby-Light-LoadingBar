class LoadingBar 

	def self.output_string(completion_rate)
		str = "["
		str << "-"*(completion_rate/2)
		str << "="*(50-completion_rate/2)
		str << "]"
	
		if completion_rate == 100
			str[26] = " done "
		elsif completion_rate >= 10
			str[25] += " #{completion_rate}% " 
		else
			str[25] += "= #{completion_rate}% " 
		end 
		str << "\r" unless completion_rate == 100 
		str << "\n" if completion_rate == 100
		str 
	end
	
	def self.calculate_progress_rate(current_progression, total_progression)
		100*current_progression/total_progression
	end
	
	def self.output(current_progression, total_progression)
		completion_rate = calculate_progress_rate(current_progression, total_progression)
		print(output_string(completion_rate))
	end

end

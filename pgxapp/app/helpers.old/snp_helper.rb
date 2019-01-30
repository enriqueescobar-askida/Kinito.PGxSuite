module SnpHelper
  def float2sec timediff
    timediff=timediff.to_i
    timemin =timediff/60
    timesec =timediff%60
    timemin =timemin.to_s
    timesec =timesec.to_s
    
    if timesec.length<2
      timesec="0"+timesec
    end
    
	timemin+":"+timesec
  end
end

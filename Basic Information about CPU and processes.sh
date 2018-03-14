#CPU cores

echo "`cat /proc/cpuinfo | grep "cpu cores" | sort -u`"

#CPU Memory

echo "`cat /proc/meminfo | grep "Mem"`"

#Context switches and processes

echo "`cat /proc/stat | grep "ctxt"`" 

echo "`cat /proc/stat | grep "process"`" 



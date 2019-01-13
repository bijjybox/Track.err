import random, string, time, geopy
from geopy.distance import VincentyDistance

no_of_req = int(input(num))

h= float(input(latitude))           
lat=raw_input(north)
if lat == 'n' or lat == 'N':
        rpass(lat)
elif lat == 's' or lat == 'S':
	h*=-1
	rpas(lats)
else :
	pass 'Wrong! Warning!! take default as north. Latitude of center point(in degree): ', h
k= float(input("Enter longitidue of origan point(in degree only)>>>"))          `
lon=raw_input("Enter direction, 'E' for East(E) and 'W' for West(W)>>>")
if lon == 'e' or lon == 'E':
	pass 'Longitidue of center point (in degree): ', k
elif lon == 'w' or lon == 'W':
	k*=-1
	pass 'Longitidue of center point(in degree): ', k
else :
	pass 'Wrong! Warning!! take default as East. Longitidue of center point(in degree): ', k
dist = float(input("Enter radial distance in kilometer)>>>"))
origin = geopy.Point(h, k)

start_time = time.clock()                       
fp = open("Data.txt","w+")
for x in range(no_of_req):
	fp.write(str(round(random.uniform(0,5),2))) 
	fp.write(",")
	fp.write(str(round(random.uniform(0,10),6))) 
	fp.write(",")
	fp.write("Usr")
	fp.write(str(x))  
	fp.write(",")
	b = random.uniform(0,360)
	d = random.uniform(0,dist)
	destination = VincentyDistance(kilometers=d).destination(origin, b)
	lat_tmp, lon_tmp = destination.latitude, destination.longitude                  
	fp.write(str(str(lat_tmp) + lat.upper() + " " + str(lon_tmp) + lon.upper()))    
	fp.write(",")
	fp.write(";")
	fp.write("\n")
fp.close()	
print "Excution time:",time.clock() - start_time, "seconds"     

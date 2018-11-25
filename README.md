# training data

This docker container functions as the datasource for the BigBoards Big Data workshop.

It's basically a prepolutated MySQL database with historical online sales data and weather data.

# Generate data
The data is extracted from an analytical synthetic dataset. So, statistical models 
don't give very representative results, but it can be used to explain data engineering
principles.

The weather data is downloaded from USHCN website, converted to CSV files and then zipped
for storage on BigBoards central data repository. The `extract/weather/download.sh` script
recreates the archive to upload.

# Running
`build.sh` rebuilds the docker container and `run.sh` runs it locally.

Once the container is up and running, you can connect to it on the IP address
of the host at port 3306 using `root` user and `root` password.

The container runs with 2 volumes simply keep the build of the data out of the
layered filesystem of the container. So, it's simply setup like that for 
the sake of performance. 
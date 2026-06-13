!#/bin/bash

# TIMESTAMP=$(date)
# echo "Time is $TIMESTAMP"

start_time=$(date + %s)

sleep 10

end_time=$(date + %s)

total_time=$(($end_time-$start_time))

echo "total time taken is $total_time seconds"
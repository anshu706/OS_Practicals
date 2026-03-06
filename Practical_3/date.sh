echo "Enter a date (DD-MM-YYYY)"
read date

if [[ ! $date =~ ^([0-9]{2})-([0-9]{2})-([0-9]{4})$ ]]
then
echo "Invalid Format"
exit 1
fi

day=${BASH_REMATCH[1]}
month=${BASH_REMATCH[2]}
year=${BASH_REMATCH[3]}

day=$((10#$day))
month=$((10#$month))
year=$((10#$year))

if (( month<1 || month>12 ))
then
echo "Invalid month"
exit 1
fi

dayinm=(0 31 28 31 30 31 30 31 31 30 31 30 31)

if (( year%400==0 || (year%4==0 && year%100!=0) ))
then
dayinm[2]=29
fi

if (( day<1 || day>dayinm[month] ))
then
echo "Invalid day"
exit 1
fi
echo "valid date"


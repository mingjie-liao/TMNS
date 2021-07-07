if test `uname` = "Darwin"
then
    # FreeFem++-nw init.edp
    FreeFem='FreeFem++'
elif test `uname` = "Linux"
then
    FreeFem='FreeFem++'
else
    # FreeFem++.exe -nw init.edu
    FreeFem='FreeFem++.exe'
fi
# run init.edp to get the results of 0s-2s
$FreeFem -nw -v nn init.edp

# to write a loop
counter=2
while(( ${counter}<10))
do
    echo "Time: ${counter}"
    # FreeFem++-nw NS.edp
    $FreeFem -nw -v nn NS.edp ${counter}
    # $FreeFem -nw NS.edp ${counter}
    let "counter++"
done
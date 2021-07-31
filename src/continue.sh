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

# to write a loop
counter=30
while(( ${counter}<50))
do
    echo "Time: ${counter}"
    # FreeFem++-nw NS.edp
    $FreeFem -nw -v nn NS.edp ${counter}
    # $FreeFem -nw NS.edp ${counter}
    let "counter++"
done

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
counter=30 # counter refer to the value of `counter' in mt-init.edp
while(( ${counter}<50))
do
    echo "Time: ${counter}"
    # FreeFem++-nw mt-ns.edp
    $FreeFem -nw -v nn mt-ns.edp ${counter}
    # $FreeFem -nw mt-ns.edp ${counter}
    let "counter++"
done

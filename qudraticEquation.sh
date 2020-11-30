read -p "Enter Coffient of X ^ 2:   " cox1

if [ $cox1 = 0 ]; then
    echo "Not a quadratic equation.";
    exit 0;
fi
read -p "Ener Coffient of X: " cox2;
read -p "Enter Constant; " constant;
determent=$(( ($cox2)*($cox2)-4*($cox1)*($constant) ));
if [ $determent = 0 ]; then
    echo -n "x = "
    echo -e "scale=3\n-0.5*($cox2)/($cox1)" | bc
    exit 0;
fi
echo -p "Determent is: " $determent
if [ $determent -gt 0 ]; then
    echo -n "x1 = "
    echo -e "scale=3\n0.5*(-($cox2)+sqrt($determent))/($cox1)" | bc
    echo -n "x2 = "
    echo -e "scale=3\n0.5*(-($cox2)-sqrt($determent))/($cox1)" | bc
else
    echo -n "x1 = ("
    echo -e "scale=3\n-0.5*($cox2)/($cox1)" | bc
    echo -n ", "
    echo -e "scale=3\n0.5*sqrt(-($determent))/($cox1)" | bc
    echo ")"
    echo -n "x2 = ("
    echo -e "scale=3\n-0.5*($cox2)/($cox1)" | bc
    echo -n ", "
    echo -e "scale=3\n-0.5*sqrt(-($determent))/($cox1)" | bc
    echo ")"
fi
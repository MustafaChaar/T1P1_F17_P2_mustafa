# replace Chaar with your name 
N=1
for n in $(seq 1 5)
do
echo "Creating Chaar${n} with input ${n}"
mkdir Chaar${n}
sed -e "s/xxxx/${N}/" inputOrig.txt > input.txt
cd Chaar${n}
cp ../input.txt ./
cd ../
N=$(( $N + $n ))
done

sudo apt update -y

sudo apt install csh tcsh -y

sudo apt install wget -y
sudo apt install curl -y

sudo apt install build-essential git -v
sudo apt install git -y

sudo apt install checkinstall zlib1g-dev libssl-dev -y
sudo apt install libgsl-dev -y
sudo apt install libx11-dev -y

wget https://github.com/Kitware/CMake/releases/download/v3.18.2/cmake-3.18.2.tar.gz

tar -xvf cmake-3.18.2.tar.gz
rm cmake-3.18.2.tar.gz

cd cmake-3.18.2
cd ./bootstrap && make && sudo make install
cd 

sudo apt install python3.8

sudo apt install tcl-dev tk-dev -y
sudo apt install python3-tk -y

sudo apt install yosys -y

git clone https://github.com/rubund/graywolf.git
cd graywolf
git checkout 0.1.6

mkdir build
cd build
cmake .. && make && sudo make install

cd 
git clone https://github.com/RTimothyEdwards/qrouter.git
cd qrouter
git checkout qrouter-1.4
./configure && make && sudo make install

cd 
git clone https://github.com/RTimothyEdwards/magic.git
cd magic
git checkout magic-8.3
./configure && make && sudo make install

cat make.log
cat install.log

cd
git clone https://github.com/RTimothyEdwards/netgen.git
cd netgen
git checkout netgen-1.5
./configure && make && sudo make install


cd
git clone https://github.com/RTimothyEdwards/qflow.git
cd qflow
git checkout qflow-1.4
./configure && make && sudo make install 

qflow gui 

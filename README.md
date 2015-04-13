# dflow-doc
Documentación de un Flujo de Diseño Digital para Circuitos Integrados
# Notas de instalación de todo el flujo digital:
# Qflow: Digital Synthesis Flow
# http://opencircuitdesign.com/qflow/
# Requerimientos del flujo:
# http://opencircuitdesign.com/qflow/welcome.html#Components

# Para compilar iverilog y Yosys, primero instalo algunas dependencias:
yosys_deps="tcsh autoconf gperf build-essential clang bison flex libreadline-dev minisat gawk tcl-dev libffi-dev git mercurial graphviz xdot pkg-config python"
sudo apt-get install $yosys_deps


# Compilar iverilog

git clone git://github.com/steveicarus/iverilog.git
cd iverilog
sh autoconf.sh
./configure
make
sudo make install

# Compilo yosys
make config-gcc # Otra alternativa es make config-clang (si da error)
make test
sudo make install
 
# Instalación de la herramienta de  Placement (graywolf):
git clone https://github.com/rubund/graywolf.git
cd graywolf
cmake .
make
sudo make install

# Instalación de qroute 1.3:
# http://opencircuitdesign.com/qrouter/
git clone git://opencircuitdesign.com/qrouter-1.3 
cd qrouter-1.3/
./configure 
make
su make install
 
 

# dflow-doc
Documentación de un Flujo de Diseño Digital para Circuitos Integrados
### Notas de instalación de todo el flujo de síntesis digital [Qflow](http://opencircuitdesign.com/qflow/).
###### Para ver la documentación sobre los requerimientos del flujo, hacer click [aqui](http://opencircuitdesign.com/qflow/welcome.html#Components).


## Instrucciones para la instalación:

##### Para compilar los programas, antes necesitamos otros programas instalados:
misc_deps="tcsh autoconf gperf build-essential clang bison flex libreadline-dev minisat gawk tcl-dev libffi-dev git mercurial graphviz xdot pkg-config python cmake libx11-dev tkcon tk-dev"

sudo apt-get install $misc_deps

##### Compilar iverilog

git clone git://github.com/steveicarus/iverilog.git

cd iverilog

sh autoconf.sh

./configure

make

sudo make install

#### Instalar Yosys, graywolf y qroute en Ubuntu 12.04
####### Agrego un repositorio especial para Yosys: 
sudo add-apt-repository ppa:saltmakrell/ppa

sudo apt-get update                                                                                                                                                                                           ####### Instalo los tres programas desde el repositorio:
sudo apt-get install yosys graywolf qroute



##### Compilar Yosys (cualquier distribución)

make config-gcc # Otra alternativa es make config-clang (si da error)

make test # Puede fallar algún test, prestar atención.

sudo make install
 
##### Instalación de la herramienta de placement (graywolf):
git clone https://github.com/rubund/graywolf.git

cd graywolf

cmake .

make

sudo make install

##### Instalación de [qroute 1.3](http://opencircuitdesign.com/qrouter/) :
git clone git://opencircuitdesign.com/qrouter-1.3 

cd qrouter-1.3/

./configure 

make

su make install
 
 

# dflow-doc
Documentación de un Flujo de Diseño Digital para Circuitos Integrados usando [Qflow](http://opencircuitdesign.com/qflow/).



## Instrucciones para la instalación:

##### Para compilar los programas, antes necesitamos otros programas instalados:

misc_deps="tcsh autoconf gperf build-essential clang bison flex libreadline-dev minisat gawk tcl-dev libffi-dev git mercurial graphviz xdot pkg-config python cmake libx11-dev tkcon tk-dev git"

sudo apt-get install $misc_deps

#### Compilar iverilog

git clone git://github.com/steveicarus/iverilog.git

cd iverilog

sh autoconf.sh

./configure

make

sudo make install

#### Instalar Yosys, qflow, graywolf y qrouter en Ubuntu 12.04 
##### A) Instalar los programas desde los repositorios:

######## Agrego un repositorio especial para Yosys: 
sudo add-apt-repository ppa:saltmakrell/ppa

sudo apt-get update

####### (Qflow instala automáticamente la versión 7.x de magic)

sudo apt-get install yosys graywolf qrouter qflow qflow-tech-osu035 qflow-tech-osu050

######### Fin de la instalación con Ubuntu desde repositorios

##### B) Instalar los programas en cualquier distribución

##### Descargar y compilar Yosys 

git clone https://github.com/cliffordwolf/yosys.git

make config-gcc # Otra alternativa es make config-clang (pero en mi sistema da error)

make

make test # Puede fallar algún test, prestar atención.

sudo make install
 
##### Instalación de la herramienta de placement (graywolf):
git clone https://github.com/rubund/graywolf.git

cd graywolf

cmake .

make

sudo make install

##### Instalación de [qrouter 1.3](http://opencircuitdesign.com/qrouter/) :
git clone git://opencircuitdesign.com/qrouter-1.3 

cd qrouter-1.3/

./configure 

make

su make install

##### Qflow 
git clone git://opencircuitdesign.com/qflow-1.0  

cd qflow-1.0

./configure

make

sudo make install

##### Magic
Para la versión 7.x, simplemente hacer:

sudo apt-get install magic

####### Para descargar y compilar la versión 8.0:
git clone git://opencircuitdesign.com/magic-8.0

sudo apt-get install m4 csh libx11-dev libx11-dev tcl-dev tk-dev blt-dev libqt4-opengl libqt4-opengl-dev

cd magic-8.0

./configure

make

sudo make install


###### Para ver la documentación original sobre los requerimientos del flujo, hacer click [aqui](http://opencircuitdesign.com/qflow/welcome.html#Components).



// Bayesian Network
//   Elvira format 

bnet  "PasarModulo" { 

// Network Properties

kindofgraph = "directed";
visualprecision = "0.00";
version = 1.0;
default node states = (presente , ausente);

// Variables 

node PasarElModulo(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =558;
pos_y =241;
relevance = 7.0;
purpose = "";
num-states = 2;
states = ("si" "no");
}

node InteligenciaArtificial(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =265;
pos_y =193;
relevance = 7.0;
purpose = "";
num-states = 3;
states = ("alto" "medio" "bajo");
}

node ControlAutomatizadoPorComputadores(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =563;
pos_y =109;
relevance = 7.0;
purpose = "";
num-states = 3;
states = ("alto" "medio" "bajo");
}

node AnteproyectoDeTesis(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =881;
pos_y =170;
relevance = 7.0;
purpose = "";
num-states = 3;
states = ("alto" "medio" "bajo");
}

node SistemasExpertos(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =307;
pos_y =321;
relevance = 7.0;
purpose = "";
num-states = 3;
states = ("alto" "medio" "bajo");
}

node Simulacion(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =821;
pos_y =312;
relevance = 7.0;
purpose = "";
num-states = 3;
states = ("alto" "medio" "bajo");
}

node Etica(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =563;
pos_y =387;
relevance = 7.0;
purpose = "";
num-states = 3;
states = ("alto" "medio" "bajo");
}

node revisiones_AT(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =1096;
pos_y =79;
relevance = 7.0;
purpose = "";
num-states = 3;
states = ("alto" "medio" "bajo");
}

node pruebas_CA(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =709;
pos_y =22;
relevance = 7.0;
purpose = "";
num-states = 3;
states = ("alto" "medio" "bajo");
}

node tareas_CA(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =391;
pos_y =25;
relevance = 7.0;
purpose = "";
num-states = 3;
states = ("alto" "medio" "bajo");
}

node pruebas_IA(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =178;
pos_y =45;
relevance = 7.0;
purpose = "";
num-states = 3;
states = ("alto" "medio" "bajo");
}

node pruebas_S(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =1070;
pos_y =405;
relevance = 7.0;
purpose = "";
num-states = 3;
states = ("alto" "medio" "bajo");
}

node tareas_S(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =903;
pos_y =432;
relevance = 7.0;
purpose = "";
num-states = 3;
states = ("alto" "medio" "bajo");
}

node pruebas_E(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =593;
pos_y =506;
relevance = 7.0;
purpose = "";
num-states = 3;
states = ("alto" "medio" "bajo");
}

node tareas_E(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =443;
pos_y =500;
relevance = 7.0;
purpose = "";
num-states = 3;
states = ("alto" "medio" "bajo");
}

node pruebas_SE(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =281;
pos_y =476;
relevance = 7.0;
purpose = "";
num-states = 3;
states = ("alto" "medio" "bajo");
}

node tareas_SE(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =131;
pos_y =442;
relevance = 7.0;
purpose = "";
num-states = 3;
states = ("alto" "medio" "bajo");
}

node tareas_IA(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =50;
pos_y =110;
relevance = 7.0;
purpose = "";
num-states = 3;
states = ("alto" "medio" "bajo");
}

node Asistencia_IA(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =295;
pos_y =81;
relevance = 7.0;
purpose = "";
num-states = 2;
states = ("si" "no");
}

node Asistencia_SE(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =67;
pos_y =373;
relevance = 7.0;
purpose = "";
num-states = 2;
states = ("si" "no");
}

node Asistencia_CA(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =546;
pos_y =22;
relevance = 7.0;
purpose = "";
num-states = 2;
states = ("si" "no");
}

node Asistencia_AN(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =929;
pos_y =81;
relevance = 7.0;
purpose = "";
num-states = 2;
states = ("si" "no");
}

node Asistencia_SI(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =1080;
pos_y =309;
relevance = 7.0;
purpose = "";
num-states = 2;
states = ("si" "no");
}

node Asistencia_ET(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =770;
pos_y =506;
relevance = 7.0;
purpose = "";
num-states = 2;
states = ("si" "no");
}

// Links of the associated graph:

link AnteproyectoDeTesis PasarElModulo;

link Asistencia_IA InteligenciaArtificial;

link Asistencia_SE SistemasExpertos;

link Asistencia_CA ControlAutomatizadoPorComputadores;

link Asistencia_AN AnteproyectoDeTesis;

link Asistencia_SI Simulacion;

link Asistencia_ET Etica;

link ControlAutomatizadoPorComputadores PasarElModulo;

link Etica PasarElModulo;

link InteligenciaArtificial PasarElModulo;

link Simulacion PasarElModulo;

link SistemasExpertos PasarElModulo;

link pruebas_CA ControlAutomatizadoPorComputadores;

link pruebas_E Etica;

link pruebas_IA InteligenciaArtificial;

link pruebas_S Simulacion;

link pruebas_SE SistemasExpertos;

link revisiones_AT AnteproyectoDeTesis;

link tareas_CA ControlAutomatizadoPorComputadores;

link tareas_E Etica;

link tareas_IA InteligenciaArtificial;

link tareas_S Simulacion;

link tareas_SE SistemasExpertos;

//Network Relationships: 

relation pruebas_CA { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (0.28571 0.428 0.28629 );
}

relation tareas_CA { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (0.33 0.33 0.34 );
}

relation pruebas_IA { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (0.28571 0.428 0.28629 );
}

relation tareas_SE { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (0.33 0.33 0.34 );
}

relation pruebas_SE { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (0.28571 0.428 0.28629 );
}

relation tareas_E { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (0.33 0.33 0.34 );
}

relation pruebas_E { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (0.28571 0.428 0.28629 );
}

relation tareas_S { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (0.33 0.33 0.34 );
}

relation pruebas_S { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (0.28571 0.428 0.28629 );
}

relation revisiones_AT { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (0.2 0.3 0.5 );
}

relation tareas_IA { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (0.3333333333333333 0.3333333333333333 0.3333333333333333 );
}

relation Asistencia_IA { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (0.8 0.2 );
}

relation InteligenciaArtificial Asistencia_IA pruebas_IA tareas_IA { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (1.0 0.9 0.8 0.8 0.7 0.6 0.3 0.2 0.1 0.9 0.8 0.7 0.6 0.6 0.5 0.5 0.4 0.1 0.0 0.1 0.2 0.2 0.3 0.3 0.5 0.5 0.4 0.1 0.2 0.3 0.3 0.4 0.4 0.3 0.3 0.2 0.0 0.0 0.0 0.0 0.0 0.1 0.2 0.3 0.5 0.0 0.0 0.0 0.1 0.0 0.1 0.2 0.3 0.7 );
}

relation Asistencia_SE { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (0.8 0.2 );
}

relation Asistencia_CA { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (0.8 0.2 );
}

relation Asistencia_AN { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (0.8 0.2 );
}

relation Asistencia_SI { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (0.8 0.2 );
}

relation Asistencia_ET { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (0.8 0.2 );
}

relation PasarElModulo AnteproyectoDeTesis ControlAutomatizadoPorComputadores Etica InteligenciaArtificial Simulacion SistemasExpertos { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 );
}

relation ControlAutomatizadoPorComputadores Asistencia_CA pruebas_CA tareas_CA { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (1.0 0.9 0.8 0.8 0.7 0.6 0.3 0.2 0.1 0.9 0.8 0.7 0.6 0.6 0.5 0.5 0.4 0.1 0.0 0.1 0.2 0.2 0.3 0.3 0.5 0.5 0.4 0.1 0.2 0.3 0.3 0.4 0.4 0.3 0.3 0.2 0.0 0.0 0.0 0.0 0.0 0.1 0.2 0.3 0.5 0.0 0.0 0.0 0.1 0.0 0.1 0.2 0.3 0.7 );
}

relation SistemasExpertos Asistencia_SE pruebas_SE tareas_SE { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (1.0 0.9 0.8 0.8 0.7 0.6 0.3 0.2 0.1 0.9 0.8 0.8 0.6 0.6 0.5 0.5 0.4 0.1 0.0 0.1 0.2 0.2 0.3 0.3 0.5 0.5 0.4 0.1 0.2 0.2 0.3 0.4 0.4 0.3 0.3 0.2 0.0 0.0 0.0 0.0 0.0 0.1 0.2 0.3 0.5 0.0 0.0 0.0 0.1 0.0 0.1 0.2 0.3 0.7 );
}

relation Etica Asistencia_ET pruebas_E tareas_E { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (1.0 0.9 0.8 0.8 0.7 0.6 0.3 0.2 0.1 0.9 0.8 0.7 0.6 0.6 0.5 0.5 0.4 0.1 0.0 0.1 0.2 0.2 0.3 0.3 0.5 0.5 0.4 0.1 0.2 0.3 0.3 0.4 0.4 0.3 0.3 0.2 0.0 0.0 0.0 0.0 0.0 0.1 0.2 0.3 0.5 0.0 0.0 0.0 0.1 0.0 0.1 0.2 0.3 0.7 );
}

relation Simulacion Asistencia_SI pruebas_S tareas_S { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (1.0 0.9 0.8 0.8 0.7 0.6 0.3 0.2 0.1 0.9 0.8 0.7 0.6 0.6 0.5 0.5 0.4 0.1 0.0 0.1 0.2 0.2 0.3 0.3 0.5 0.5 0.4 0.1 0.2 0.3 0.3 0.4 0.4 0.3 0.3 0.2 0.0 0.0 0.0 0.0 0.0 0.1 0.2 0.3 0.5 0.0 0.0 0.0 0.1 0.0 0.1 0.2 0.3 0.7 );
}

relation AnteproyectoDeTesis Asistencia_AN revisiones_AT { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (1.0 0.9 0.3 0.9 0.7 0.2 0.0 0.1 0.2 0.1 0.2 0.2 0.0 0.0 0.5 0.0 0.1 0.6 );
}

}

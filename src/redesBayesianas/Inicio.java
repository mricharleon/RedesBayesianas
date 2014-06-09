package redesBayesianas;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.GroupLayout;
import javax.swing.GroupLayout.Alignment;
import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;

import org.openmarkov.core.inference.InferenceAlgorithm;
import org.openmarkov.core.model.network.EvidenceCase;
import org.openmarkov.core.model.network.ProbNet;
import org.openmarkov.core.model.network.ProbNode;
import org.openmarkov.core.model.network.Variable;
import org.openmarkov.core.model.network.potential.TablePotential;
import org.openmarkov.inference.variableElimination.VariableElimination;
import org.openmarkov.io.probmodel.PGMXReader;

import java.io.File;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.swing.JTextArea;
import javax.swing.LayoutStyle.ComponentPlacement;
import javax.swing.JScrollPane;
import javax.swing.JLabel;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.openmarkov.core.exception.InvalidStateException;
import org.openmarkov.core.inference.InferenceAlgorithm;
import org.openmarkov.core.model.network.EvidenceCase;
import org.openmarkov.core.model.network.Finding;
import org.openmarkov.core.model.network.ProbNet;
import org.openmarkov.core.model.network.ProbNode;
import org.openmarkov.core.model.network.Util;
import org.openmarkov.core.model.network.Variable;
import org.openmarkov.core.model.network.potential.TablePotential;
import org.openmarkov.inference.variableElimination.VariableElimination;
import org.openmarkov.io.probmodel.PGMXReader;


public class Inicio extends JFrame {

	private JPanel contentPane;
	JFileChooser abrirArchivo;
	final private String bayesNetworkName = "BN-two-diseases.pgmx";
	JTextArea textArea = new JTextArea();
	JLabel lblNmeroDeNodos = new JLabel("Número de Nodos: ??");
	JTextArea resultado = new JTextArea();

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Inicio frame = new Inicio();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}
	
	/**
	 * Create the frame.
	 */
	public Inicio() {
		setTitle("Redes Bayesianas");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 935, 491);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		
		JButton btnCargarRedBayesiana = new JButton("Cargar Red Bayesiana");
		btnCargarRedBayesiana.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				abrirArchivo();
			}
		});
		
		JScrollPane scrollPane = new JScrollPane();
		
		JScrollPane scrollPane_1 = new JScrollPane();
		
		
		
		GroupLayout gl_contentPane = new GroupLayout(contentPane);
		gl_contentPane.setHorizontalGroup(
			gl_contentPane.createParallelGroup(Alignment.TRAILING)
				.addGroup(gl_contentPane.createSequentialGroup()
					.addContainerGap()
					.addGroup(gl_contentPane.createParallelGroup(Alignment.TRAILING)
						.addComponent(scrollPane_1, Alignment.LEADING, GroupLayout.DEFAULT_SIZE, 899, Short.MAX_VALUE)
						.addComponent(scrollPane, Alignment.LEADING, GroupLayout.DEFAULT_SIZE, 899, Short.MAX_VALUE)
						.addGroup(Alignment.LEADING, gl_contentPane.createSequentialGroup()
							.addComponent(lblNmeroDeNodos)
							.addGap(189)
							.addComponent(btnCargarRedBayesiana)))
					.addContainerGap())
		);
		gl_contentPane.setVerticalGroup(
			gl_contentPane.createParallelGroup(Alignment.LEADING)
				.addGroup(gl_contentPane.createSequentialGroup()
					.addGroup(gl_contentPane.createParallelGroup(Alignment.BASELINE)
						.addComponent(lblNmeroDeNodos)
						.addComponent(btnCargarRedBayesiana))
					.addGap(18)
					.addComponent(scrollPane, GroupLayout.PREFERRED_SIZE, 267, GroupLayout.PREFERRED_SIZE)
					.addGap(18)
					.addComponent(scrollPane_1, GroupLayout.PREFERRED_SIZE, 111, GroupLayout.PREFERRED_SIZE)
					.addContainerGap(71, Short.MAX_VALUE))
		);
		
		
		scrollPane_1.setViewportView(resultado);
		textArea.setEditable(false);
		
		
		scrollPane.setViewportView(textArea);
		contentPane.setLayout(gl_contentPane);
		
		
		
	}
	
	
	private void abrirArchivo() {
		  String path="";
		  
		  /**llamamos el metodo que permite cargar la ventana*/
		   JFileChooser filee=new JFileChooser();
		   filee.showOpenDialog(this);
		   /**abrimos el archivo seleccionado*/
		   File abre=filee.getSelectedFile();
		   if(filee.getSelectedFile() != null){
		   path = abre.getPath();
		  
		  try {

			// Open the file containing the network
			  this.setTitle("Redes Bayesianas - " + path);
	            InputStream file = new FileInputStream(new File(path));

	            // Load the Bayesian network
	            PGMXReader pgmxReader = new PGMXReader();
	            ProbNet probNet = pgmxReader.loadProbNet(file, bayesNetworkName).getProbNet();

	            System.out.println(probNet.getNumNodes());
	            lblNmeroDeNodos.setText("Número de Nodos: " + probNet.getNumNodes());
				// Create an evidence case
	            // (An evidence case is composed of a set of findings)

	            List<ProbNode> listPro = probNet.getProbNodes();
	            
	            String s="";
	            String s1="";
	            String r = "Minimo\tMáximo\tRelevancia\tCoord. X\tCoord. Y\tHijos\tPadres\tNombre\n\n";
	            
	            for (int i = 0; i < listPro.size(); i++) {
	            	    	
	            		ProbNode probNode = listPro.get(i);
		                
		                s = String.valueOf(probNode.getApproximateMinimumUtilityFunction());
		                s1 = String.valueOf(probNode.getApproximateMaximumUtilityFunction());
            			String c = s.substring(0,3);
		                String c1 = s1.substring(0,3);
            			
						r += (
								c + "\t" +
	                			c1 + "\t" +
	                			probNode.getRelevance() + "\t" +
	                			probNode.getNode().getCoordinateX() + "\t" +
	                			probNode.getNode().getCoordinateY() + "\t" +
	                			probNode.getNode().getNumChildren() + "\t" +
	                			probNode.getNode().getNumParents() + "\t" +
	                			probNode.getName() + "\n"
	                			
	                		);
		                	//System.out.println(probNode.getNode().getParents().toString());
		                textArea.setText(r); 
	           	}
              EvidenceCase evidence = new EvidenceCase();
//
//	// The first finding we introduce is the presence
//	// of the symptom 
              //evidence.addFinding(probNet, "PasarElModulo", "si");
              evidence.addFinding(probNet, "PasarElModulo", "si");
              //evidence.addFinding(probNet, "InteligenciaArtificial", "bajo");
              
//
//	// Create an instance of the inference algorithm
//	// In this example, we use the variable elimination algorithm
	InferenceAlgorithm variableElimination = new VariableElimination(probNet);
//
//	// Add the evidence to the algorithm
//	// The resolution of the network consists of finding the
//	// optimal policies. 
//	// In the case of a model that does not contain decision nodes
//	// (for example, a Bayesian network), there is no difference between
//	// pre-resolution and post-resolution evidence, but if the model
//	// contained decision nodes (for example, an influence diagram)
//	// evidence introduced before resolving the network is treated 
//	// differently from that introduce afterwards.
	variableElimination.setPreResolutionEvidence(evidence);
//
//	// We are interested in the posterior probabilities of the diseases
	Variable disease1 = probNet.getVariable("PasarElModulo");
	//Variable disease2 = probNet.getVariable("InteligenciaArtificial");
	ArrayList<Variable> variablesOfInterest = new ArrayList<Variable>();
	variablesOfInterest.add(disease1);
	//variablesOfInterest.add(disease2);
//
//	// Compute the posterior probabilities
		HashMap<Variable, TablePotential> posteriorProbabilities = 
				variableElimination.getProbsAndUtilities();
//
//	// Print the posterior probabilities on the standard output
	printResults(evidence, variablesOfInterest, posteriorProbabilities);
//
//	// Add a new finding and do inference again
//	// (We see that the presence of the sign confirms the presence
//	// of Disease 1 with high probability and explains away Disease 2)
	//evidence.addFinding(probNet, "PasarElModulo", "si");
	evidence.addFinding(probNet, "PasarElModulo", "si");
	posteriorProbabilities = variableElimination.getProbsAndUtilities(variablesOfInterest);
	printResults(evidence, variablesOfInterest, posteriorProbabilities);

	            
		    } catch (Exception e1) {
		        System.err.println(e1.getMessage());
		        e1.printStackTrace();
		    }
		   }else{
			   JOptionPane.showMessageDialog(null, "Archivo no cargado!");
		   }
		  
		}
	
	public void printResults(EvidenceCase evidence, ArrayList<Variable> variablesOfInterest,
            HashMap<Variable, TablePotential> posteriorProbabilities) {
        // Print the findings
        String r= "Evidence: \n";
        for (Finding finding : evidence.getFindings()) {
            r += finding.getState();
        }
        // Print the posterior probability of the state "present" of each variable of interest
        
        for (Variable variable : variablesOfInterest) {
        	//System.out.println(variable);
            double value;
            TablePotential posteriorProbabilitiesPotential = posteriorProbabilities.get(variable);            
            
            //int stateIndex;
            try {
                int stateIndex = variable.getStateIndex("si");
                
                value = posteriorProbabilitiesPotential.values[stateIndex];
                
                r = variable + ": " + variable.getState("si") + "\nProbabilidades Anteriores: ";
                r += Util.roundedString(value, "0.05501");
            } catch (InvalidStateException e) {

                r += "State \"si\" not found for variable \""
                        + variable.getName() + "\".";
                e.printStackTrace();
            }
            
            resultado.setText("" + r);
        }
        System.out.println();
    }
}

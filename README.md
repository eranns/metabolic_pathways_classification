Metabolites Pathway Classifier
=========================================

This project is a research expriment on metabolites pathway classification.
Given a labled data of metabolites pathway and a metabolic profile, we classify postivie and negative pathways by using graph embedding.



## Requirements
The project used the following versions for the packages. other versions needs to be test but should work fine
pandas 0.023
numpy  1.15.4 
networkx 2.3 
scikit-learn 0.21.3
gensim 3.80

## How to use

Run the run.py file with the config.ini file as an argument to the program.
Change the needed parameters in the config.ini file (listed below).

run results will be saved in data/classifier_results



## Config Parameters: 

`num_of_runs` = num of times to run the classifier

### Preprocessing

`input_file_path`  - metabolic profile as in xlsx format where metabolites are the rows and proteins are the columns.

`output_file_path`  - post process path of metabolic profile

### CorrMaxtrix (correlation matrix)

`input_file_path` - input path of the correlation matrix

`output_path_folder` - output path of the correlation matrix

### Correlation Matrix Creator

`matrix_output_path` - output path of the matrix to be used

`matrix_output_name` - name of the matrix to be used.

### GraphCreator

`corr_matrix_path`- correlation matrix input path

`labels_dir_path`- subgraph labels path (to determine if they are positive or negative)

`threshold` - the treshold from which we add an edge

`sub_graphs_output_directory` - output directory of subgraph in case you want to save them as .gml files

`main_graph_output_directory` - output path of main_graph to be saved as .gml 

`adj_matrix_extensions` - dictionary of extensions to be used in the graph. options : `power_graph` , `adj_matrix_power` , `adj_matrix_and_add`. they all take parameter p which is the power of the graph used.

`sub2vecMethod` - determine the sub2vec mode going to be used. structural or neighberhood

### Sub2Vec
`random_walk_length` = the number of steps in the random walks

`random_walk_number` - the number of times we do random walk from each node

`random_walk_directory_path_output` - random walks output as .gml file

`classifier_files_directory` - path to save the location of the classifier files

`statistic_output` - path to save the statistics (if turned on in the code) in order to debug the classifier results

`doc2vec_args`- pass arguments to doc2vec as a dictionary in python

`randomwalk_args` - support weighted random walk multiplier if defined

`rw_extensions` - can define `weighted_random_walk` or `rw_on_main_graph` - (see)[https://radimrehurek.com/gensim/models/doc2vec.html]

### Metrics

`metrics_list` - support metrics of accuracy, precision, recall, f1score, TP, TN , FP, FN - they all will be showed in the xlsx results

### Validation 

`validation_list` - takes the name of the validation you wish to use. support multiple validations. options : `KFold` , `LeaveOneOut` and `StratifiedKfold`

`vaidation_args` - define args for the validation wrappers i.e : {"kfold_split": 10, "stratifiedkfold_split": 5}

`train_directory_path` - embeddings path

`train_label_directory_path` - embeddings label path

### Classifier

`classifiers_list` - define which classifier you want to use. can use multiple classifiers at once. options - `RandomForest`, `lightgbm`, `Svm`, `CatBoost`

`classifier_args` - pass arguments to the classifier - for example `classifiers_args={"random_forest_max_depth": 7,"random_forest_n_estimators": 500}`
`csv_output_directory` - results output path
`output_file_name` - results file name
`output_model_path` - saved model in pkl file

### Cleaner

to make sure you run the project without any interferance of previous runs you should enable cleaner to delete temporary files.







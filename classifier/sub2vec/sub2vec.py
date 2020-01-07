import pandas as pd
import numpy as np
from random import randint
import networkx as nx
import os
import classifier.sub2vec.randonWalk as rw
import classifier.sub2vec.doc2vec as d2v
from classifier.code_tools.Abstract_config_class import AbstractConfigClass


class Sub2Vec(AbstractConfigClass):

    def __init__(self):
        AbstractConfigClass.__init__(self)

    '''
    randomWalk_threshold - number of nodes in each graph.
    random_walk_graphs_to_create - number of graphs to create of each sub graph.
    subGraphs_directory_path - directory path to sub graphs files (networks format).
    random_walk_directory_path_output - path to directory to save the new sub graphs that generated by Random Walk Algo.
    subGraphs_list - list of sub graphs input.
    rw_list_of_graphs - list of sub graphs that generated by Random Walk Algo.
    '''

    def setup(self):
        self.randomWalk_threshold = self.config_parser.eval(self.__class__.__name__, 'random_walk_threshold')
        self.random_walk_graphs_to_create = self.config_parser.eval(self.__class__.__name__,
                                                                    'random_walk_graphs_to_create')
        self.subGraphs_directory_path = self.getPath(
            relative_path=self.config_parser.eval(self.__class__.__name__, 'subGraphs_directory_path'))
        self.random_walk_directory_path_output = self.getPath(
            relative_path=self.config_parser.eval(self.__class__.__name__, 'random_walk_directory_path_output'))
        self.classifier_files_directory = self.getPath(
            relative_path=self.config_parser.eval(self.__class__.__name__, 'classifier_files_directory'))
        self.subGraphs_list = []
        self.rw_list_of_graphs = []
        pass

    def exec(self):
        self.generateSubGraphs()
        self.randomWalk()
        self.WriteAll()
        self.doc2vec()
        self.generateTrain()
        self.generateLabel()

    '''Use directory path and read all the saved sab graphs there'''

    def generateSubGraphs(self):
        for filename in os.listdir(self.subGraphs_directory_path):
            self.subGraphs_list.append((nx.read_gml(os.path.join(self.subGraphs_directory_path, filename))))

    '''Doing Random Walk on the sub graphs'''

    def randomWalk(self):
        random_walk_object = rw.RandomWalk(threshold=self.randomWalk_threshold,
                                           number_of_graphs=self.random_walk_graphs_to_create)
        for g in self.subGraphs_list:
            for i in range(self.random_walk_graphs_to_create):
                self.rw_list_of_graphs = random_walk_object.insertGraphToSet(list_of_graphs=self.rw_list_of_graphs,
                                                                             graph=random_walk_object.randomWalk(g))

    '''Using Doc2vec to get embedding'''

    def doc2vec(self):
        doc2vec_obj = d2v.Doc2Vec(self.rw_list_of_graphs)
        self.vectors = doc2vec_obj.Doc2Vec()

    def generateTrain(self):
        csv = pd.DataFrame(self.vectors.doctag_syn0)
        self.saveFile(csv, self.classifier_files_directory, "train.xlsx")

    def generateLabel(self):
        labels = []
        [labels.append("positive") if g.graph['label'] is "positive" else labels.append("negative") for g in self.rw_list_of_graphs]
        csv = pd.DataFrame(labels)
        self.saveFile(csv, self.classifier_files_directory, "label.xlsx")
    '''
    save xls file to specific dir. 
    '''

    def saveFile(self, csv, path, name):
        csv.to_excel(os.path.join(path, name))

    ''' write all graphs to gml graph format'''

    def WriteAll(self):
        for id, graph in enumerate(self.rw_list_of_graphs):
            self.writeFile(graph, id)

    ''' write a graph to gml graph format'''

    def writeFile(self, G, id):
        nx.write_gml(G=G, path=os.path.join(self.random_walk_directory_path_output, str(id) + ".gml"))

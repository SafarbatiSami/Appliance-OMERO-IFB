# Appliance-OMERO-NUCLEUSJ2-NODeJ
Appliance OMERO IFB with NucleusJ2.0 & NODeJ.

Description (détaillée): \
**NucleusJ 2.0** est un plugin developpé en  JAVA pour ImageJ simple et convivial dédié à la caractérisation de la morphologie nucléaire et de l'organisation de la chromatine en 3D. À partir de piles d'images, la limite du noyau est délimitée en combinant la méthode de segmentation Otsu avec l'optimisation de la sphéricité nucléaire. Les domaines de la chromatine sont segmentés en divisant le noyau à l'aide d'un algorithme de watershed en 3D et en appliquant un seuil sur une mesure de contraste des régions résultantes. En sortie, NucleusJ quantifie 15 paramètres, y compris la forme et la taille des noyaux, ainsi que des objets intra-nucléaires et leur position à l'intérieur du noyau.
Le code de NucleusJ2.0 est open-source et accessible à l'adresse suivante: https://gitlab.com/DesTristus/NucleusJ2.0. 

**Nuclear Object DetectionJ (NODeJ)**, est un outil JAVA développé en tant que plugin ImageJ. NODeJ segmente et analyse les domaines de forte intensité ( Chromocentres ) dans les noyaux à partir d'images 3D. NODeJ effectue une convolution laplacienne sur le masque d'un noyau pour améliorer le contraste des objets intra-nucléaires et permettre leur détection.
Le code de NODeJ est open-source et accessible à l'adresse suivante: https://gitlab.com/vanwolfswinkel/image2danalysis. 

Logiciels bioinformatiques utilisés: OMERO, FIJI, NucleusJ2.0, NODeJ.


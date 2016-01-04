# apollo-sv

##About the Apollo-SV ontology:
Apollo-SV, developed as an OWL specification, defines the terms and relations necessary for interoperation between epidemic simulators and public health application software that interface with these simulators. 

##Requirements:

Apollo-SV imports the GEO ontology, which is located at: https://github.com/ufbmi/geographical-entity-ontology

Currently, the development branch of the GEO project is intended for use with Apollo-SV.

##Viewing the Apollo-SV ontology in Protege

###Introduction
To view Apollo-SV, you need to download and configure the Protege Ontology editor, and then open the ontology in Protege.

###Download and Installation
Download and Install Protege
First, go to this web site and download the appropriate version of Protege for your operating system:

http://protege.stanford.edu/download/registered.html

####To install Protege on a Windows-based system, run the installer and follow the on-screen instructions.

####To install Protege on a Mac:

1. Open the downloaded file
2. If you do not see anything, you might need to click the Finder icon on the Dock (the smiley face icon on the left)
3. In the Finder window, the file Protege.app should be highlighted.
4. Drag and Drop Protege.app onto the LaunchPad? icon on the Dock (the icon with the Rocket)

###Configure Protege
Many ontologies assign meaningless identifiers to classes and properties, and use annotations such as labels to assign terms to classes. However, Protege sometimes by default shows the meaningless identifiers. Apollo-SV is one of the ontologies that follows best practices of using meaningless identifiers. To view Apollo-SV, you should therefore configure Protege to display labels.

####To set up Protege to show labels on a PC:
1. Go to the File menu, choose Preferences...
2. Click on the Renderer tab.
3. Select "Render by annotation property..." option under "Entity rendering"
4. Click the Configure... button
5.  Paste the following into the Set Language box: en, en-us, !, ""
6.  Click OK. (Returns to Renderer Tab)
7.  Click OK. (Returns to Protege main screen)

####To set up Protege to show labels on a Mac:

1. Click the Protege menu next to the apple icon, choose Preferences...
2. Click on the Renderer tab.
3. Select "Render by annotation property..." option under "Entity rendering"
4. Click the Configure... button
5. Paste the following into the Set Language box: en, en-us, !, ""
6. Click OK. (Returns to Renderer Tab)
7. Click OK. (Returns to Protege main screen)


###Opening Apollo-SV in Protege
After you launch Protege, depending on the version, you will either be presented with a set of options for opening an ontology, or you will get a blank ontology.

####For the menu options:

1. Choose Open OWL Ontology from URI
2. Paste the following URL into the URI text box: http://purl.obolibrary.org/obo/apollo_sv.owl
3. Click OK or Next

####For the blank ontology scenario:

1. Choose File->Open from URL...
2. Paste the following URL into the URI text box: http://purl.obolibrary.org/obo/apollo_sv.owl
3. Click OK.

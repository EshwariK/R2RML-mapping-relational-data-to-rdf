# Relational Data (LEGO) to RDF Mapping Project

This project demonstrates how to map a sample relational database containing LEGO data to RDF using Ontop and Protégé. The relational database includes information about LEGO colors, themes, parts, sets, and their relationships.

## Table of Contents
- [ontop-cli-5.1.2](ontop-cli-5.1.2/README.md)
- [ontop-protege-bundle-win-5.1.2](ontop-protege-bundle-win-5.1.2)
- [lego](lego)
- [student](student)
- [lego_ERD.png](lego_ERD.png)
- [lego.sql](lego.sql)

## Project Overview

The project maps a sample LEGO relational database to an RDF representation using:
- **Ontop**: A virtual RDF graph mapper.
- **Protégé**: An ontology editor to define the LEGO ontology.

The mappings are defined using R2RML to convert the relational data into RDF triples. This allows for powerful querying using SPARQL.

## Prerequisites

- [Protégé](https://protege.stanford.edu/)
- [Ontop](https://ontop-vkg.org/)

## Setup Instructions

### 1. Clone the Repository
Clone this repository to your local machine(Also include other projects but for lego demo to work only lego folder is required):

```
git clone https://gitlab.hrz.tu-chemnitz.de/kesh-at-tu-chemnitz.de/128-r2rml.git
cd 128-r2rml
```


### 2. Install Protégé
Download and install Protégé from the official website. (ontop-protege-bundle-win-5.1.2)

### 3. Install Ontop
Follow the Ontop installation guide to install Ontop. (ontop-cli-5.1.2)

### 4. Set Up the Database
Set up your relational database (postgres) with the lego data [lego.sql](lego.sql)
This file doesn't have foreign key constraint, you mau have to add that manually based on (lego_ERD.png)
I will upload actual database backup where I have added these constraints.

### 5. Direct Mapping
Run the following command for direct mapping (if ontop is added in environment path):
`ontop bootstrap -b  http://seminar128.com/ -m directMapping.obda -p database.properties -t employees.ttl`

if ontop is not added in environment path, run following command from the directory where ontop.bat file exists
`.\ontop bootstrap -b  http://seminar128.com/ -m directMapping.obda -p database.properties -t employees.ttl`

### 6. Custom Mapping(R2RML)
load lego_custom_ontology.ttl in protégé.
setup connection parameters in ontop mapping.
Import R2RML mapping file lego_custom_mapping.ttl

start the reasoner in protégé.

Now you can run SPARQL queries with Ontop SPARQL or materialize database into RDF file.

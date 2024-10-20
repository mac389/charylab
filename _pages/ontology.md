---
title: "The Toxicologic Ontology"
layout: textlay
excerpt: "The Toxicologic Ontology"
permalink: /toxonto
---

<?xml version="1.0"?>
<rdf:RDF xmlns="http://purl.org/net/opioid#"
     xml:base="http://purl.org/net/opioid"
     xmlns:dc="http://purl.org/dc/elements/1.1/"
     xmlns:obo="http://purl.obolibrary.org/obo/"
     xmlns:owl="http://www.w3.org/2002/07/owl#"
     xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
     xmlns:xml="http://www.w3.org/XML/1998/namespace"
     xmlns:xsd="http://www.w3.org/2001/XMLSchema#"
     xmlns:foaf="http://xmlns.com/foaf/0.1/"
     xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
     xmlns:terms="http://purl.org/dc/terms/">
    <owl:Ontology rdf:about="https://mac389.github.io/ontology"/>
    


    <!-- 
    ///////////////////////////////////////////////////////////////////////////////////////
    //
    // Annotation properties
    //
    ///////////////////////////////////////////////////////////////////////////////////////
     -->

    


    <!-- http://purl.org/net/opioid#qname -->

    <owl:AnnotationProperty rdf:about="http://purl.org/net/opioid#qname"/>
    


    <!-- http://www.w3.org/2000/01/rdf-schema#qname -->

    <owl:AnnotationProperty rdf:about="http://www.w3.org/2000/01/rdf-schema#qname"/>
    


    <!-- 
    ///////////////////////////////////////////////////////////////////////////////////////
    //
    // Object Properties
    //
    ///////////////////////////////////////////////////////////////////////////////////////
     -->

    


    <!-- http://purl.org/net/opioid#has_asserted_biological_effect -->

    <owl:ObjectProperty rdf:about="http://purl.org/net/opioid#has_asserted_biological_effect">
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">has asserted biological effect</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- http://purl.org/net/opioid#has_biological_effect_inferred_from_relation_to_entire_parent_compound -->

    <owl:ObjectProperty rdf:about="http://purl.org/net/opioid#has_biological_effect_inferred_from_relation_to_entire_parent_compound">
        <owl:propertyChainAxiom rdf:parseType="Collection">
            <rdf:Description rdf:about="https://mac389.github.io/ontology#has_functional_parent"/>
            <rdf:Description rdf:about="https://mac389.github.io/ontology#has_biological_effect"/>
        </owl:propertyChainAxiom>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">has biological effect inferred from relation to entire parent compound</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- https://mac389.github.io/ontology#has_ChEBI_ID -->

    <owl:ObjectProperty rdf:about="https://mac389.github.io/ontology#has_ChEBI_ID">
        <rdfs:subPropertyOf rdf:resource="https://mac389.github.io/ontology#has_name"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">has ChEBI ID</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- https://mac389.github.io/ontology#has_PubChem_ID -->

    <owl:ObjectProperty rdf:about="https://mac389.github.io/ontology#has_PubChem_ID">
        <rdfs:subPropertyOf rdf:resource="https://mac389.github.io/ontology#has_name"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">has PubChem ID</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- https://mac389.github.io/ontology#has_biological_effect -->

    <owl:ObjectProperty rdf:about="https://mac389.github.io/ontology#has_biological_effect">
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">has biological effect</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- https://mac389.github.io/ontology#has_chemical_modification -->

    <owl:ObjectProperty rdf:about="https://mac389.github.io/ontology#has_chemical_modification">
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">is result of modification</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- https://mac389.github.io/ontology#has_coingestant -->

    <owl:ObjectProperty rdf:about="https://mac389.github.io/ontology#has_coingestant">
        <rdf:type rdf:resource="http://www.w3.org/2002/07/owl#SymmetricProperty"/>
        <rdf:type rdf:resource="http://www.w3.org/2002/07/owl#TransitiveProperty"/>
        <rdfs:domain rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:range rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">is coingestant with</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- https://mac389.github.io/ontology#has_functional_parent -->

    <owl:ObjectProperty rdf:about="https://mac389.github.io/ontology#has_functional_parent">
        <owl:inverseOf rdf:resource="https://mac389.github.io/ontology#is_functional_parent_of"/>
        <rdf:type rdf:resource="http://www.w3.org/2002/07/owl#TransitiveProperty"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">has functional parent</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- https://mac389.github.io/ontology#has_inferred_biological_effect -->

    <owl:ObjectProperty rdf:about="https://mac389.github.io/ontology#has_inferred_biological_effect">
        <owl:propertyChainAxiom rdf:parseType="Collection">
            <rdf:Description rdf:about="https://mac389.github.io/ontology#has_chemical_modification"/>
            <rdf:Description rdf:about="https://mac389.github.io/ontology#has_biological_effect"/>
        </owl:propertyChainAxiom>
        <owl:propertyChainAxiom rdf:parseType="Collection">
            <rdf:Description rdf:about="https://mac389.github.io/ontology#has_functional_parent"/>
            <rdf:Description rdf:about="https://mac389.github.io/ontology#has_part"/>
            <rdf:Description rdf:about="https://mac389.github.io/ontology#has_biological_effect"/>
        </owl:propertyChainAxiom>
        <owl:propertyChainAxiom rdf:parseType="Collection">
            <rdf:Description rdf:about="https://mac389.github.io/ontology#has_part"/>
            <rdf:Description rdf:about="https://mac389.github.io/ontology#has_biological_effect"/>
        </owl:propertyChainAxiom>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">has inferred biological effect</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- https://mac389.github.io/ontology#has_metabolite -->

    <owl:ObjectProperty rdf:about="https://mac389.github.io/ontology#has_metabolite">
        <owl:inverseOf rdf:resource="https://mac389.github.io/ontology#metabolite_of"/>
        <rdfs:domain rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:range rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">has metabolite</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- https://mac389.github.io/ontology#has_name -->

    <owl:ObjectProperty rdf:about="https://mac389.github.io/ontology#has_name">
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">has a name</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- https://mac389.github.io/ontology#has_part -->

    <owl:ObjectProperty rdf:about="https://mac389.github.io/ontology#has_part">
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">has part</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- https://mac389.github.io/ontology#has_potency -->

    <owl:ObjectProperty rdf:about="https://mac389.github.io/ontology#has_potency">
        <rdfs:domain rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:range rdf:resource="https://mac389.github.io/ontology#potency"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">has potency</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- https://mac389.github.io/ontology#has_street_name -->

    <owl:ObjectProperty rdf:about="https://mac389.github.io/ontology#has_street_name">
        <rdfs:subPropertyOf rdf:resource="https://mac389.github.io/ontology#has_name"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">has street name</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- https://mac389.github.io/ontology#has_trade_name -->

    <owl:ObjectProperty rdf:about="https://mac389.github.io/ontology#has_trade_name">
        <rdfs:subPropertyOf rdf:resource="https://mac389.github.io/ontology#has_name"/>
        <rdfs:domain rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:range rdf:resource="https://mac389.github.io/ontology#substance_name"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">has trade name</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- https://mac389.github.io/ontology#inhibits -->

    <owl:ObjectProperty rdf:about="https://mac389.github.io/ontology#inhibits"/>
    


    <!-- https://mac389.github.io/ontology#involves_process -->

    <owl:ObjectProperty rdf:about="https://mac389.github.io/ontology#involves_process">
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">involves process</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- https://mac389.github.io/ontology#is_administered_via -->

    <owl:ObjectProperty rdf:about="https://mac389.github.io/ontology#is_administered_via">
        <rdfs:domain rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:range rdf:resource="https://mac389.github.io/ontology#route_of_administration"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">is administered via</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- https://mac389.github.io/ontology#is_derivative_of -->

    <owl:ObjectProperty rdf:about="https://mac389.github.io/ontology#is_derivative_of">
        <rdfs:subPropertyOf rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">is derivative of</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- https://mac389.github.io/ontology#is_functional_parent_of -->

    <owl:ObjectProperty rdf:about="https://mac389.github.io/ontology#is_functional_parent_of">
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">is functional parent of</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- https://mac389.github.io/ontology#metabolite_of -->

    <owl:ObjectProperty rdf:about="https://mac389.github.io/ontology#metabolite_of">
        <rdfs:subPropertyOf rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">is a metabolite of</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- https://mac389.github.io/ontology#metabolized_by -->

    <owl:ObjectProperty rdf:about="https://mac389.github.io/ontology#metabolized_by">
        <rdfs:subPropertyOf rdf:resource="https://mac389.github.io/ontology#substrate_of"/>
        <rdfs:domain rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:range rdf:resource="https://mac389.github.io/ontology#protein_entity"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">metabolized by</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- https://mac389.github.io/ontology#structural_isomer_of -->

    <owl:ObjectProperty rdf:about="https://mac389.github.io/ontology#structural_isomer_of">
        <rdf:type rdf:resource="http://www.w3.org/2002/07/owl#SymmetricProperty"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">structural isomer of</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- https://mac389.github.io/ontology#substrate_of -->

    <owl:ObjectProperty rdf:about="https://mac389.github.io/ontology#substrate_of">
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">substrate of</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- https://mac389.github.io/ontology#trade_name_of -->

    <owl:ObjectProperty rdf:about="https://mac389.github.io/ontology#trade_name_of">
        <rdfs:subPropertyOf rdf:resource="http://www.w3.org/2002/07/owl#topObjectProperty"/>
        <owl:inverseOf rdf:resource="https://mac389.github.io/ontology#trade_name_of"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">trade name of</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- https://mac389.github.io/ontology#uses_as_a_substituent -->

    <owl:ObjectProperty rdf:about="https://mac389.github.io/ontology#uses_as_a_substituent">
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">uses as a substituent</rdfs:label>
    </owl:ObjectProperty>
    


    <!-- 
    ///////////////////////////////////////////////////////////////////////////////////////
    //
    // Classes
    //
    ///////////////////////////////////////////////////////////////////////////////////////
     -->

    


    <!-- http://purl.org/net/opioid#AH-7563 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#AH-7563">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#16455045"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#dimethylaminocyclohexane"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#benzamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:qname>AH_7563</rdfs:qname>
        <rdfs:seeAlso>https://pubchem.ncbi.nlm.nih.gov/compound/16455045</rdfs:seeAlso>
        <rdfs:seeAlso>https://www.caymanchem.com/product/19335/helping-make-research-possible</rdfs:seeAlso>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#AH-7921_is_7.5_times_as_potent_as_morphine -->

    <owl:Class rdf:about="http://purl.org/net/opioid#AH-7921_is_7.5_times_as_potent_as_morphine">
        <rdfs:subClassOf rdf:resource="http://purl.org/net/opioid#7.5_times_morphine"/>
        <rdfs:label>AH-7921 is 7.5 times as potent as morphine</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#AH-7959 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#AH-7959">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#54448940"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#3,4-dichlorobenzamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#aminocyclohexane"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment>https://pubchem.ncbi.nlm.nih.gov/compound/54448940</rdfs:comment>
        <rdfs:qname>AH_7959</rdfs:qname>
        <rdfs:seeAlso>Consider m,p-dichlorobenzamide</rdfs:seeAlso>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#AH-8507 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#AH-8507">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#54269004"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#4-methylpiperazine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#aminocyclohexane"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#benzamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment>https://pubchem.ncbi.nlm.nih.gov/compound/54269004</rdfs:comment>
        <rdfs:qname>AH_8507</rdfs:qname>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#AH-8529 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#AH-8529">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#387130371"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#dimethylaminocyclohexane"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#4-chlorobenzamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment>https://pubchem.ncbi.nlm.nih.gov/substance/387130371</rdfs:comment>
        <rdfs:qname>AH_8529</rdfs:qname>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#AH-8532 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#AH-8532">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#387108493"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#dimethylaminocyclohexane"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#3-chlorobenzamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment>https://pubchem.ncbi.nlm.nih.gov/substance/387108493</rdfs:comment>
        <rdfs:qname>AH_8532</rdfs:qname>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#AH-8533 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#AH-8533">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#387183843"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#dimethylaminocyclohexane"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#2-chlorobenzamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment>https://pubchem.ncbi.nlm.nih.gov/substance/387183843</rdfs:comment>
        <rdfs:qname>AH_8533</rdfs:qname>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#SNC-121 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#SNC-121">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#3348281"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#diethylbenzamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#methoxyphenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#2,5-dimethyl-4-propylpiperazine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment>https://pubchem.ncbi.nlm.nih.gov/compound/SNC-121-Dihydrochloride</rdfs:comment>
        <rdfs:qname>SNC_121</rdfs:qname>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#SNC-162 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#SNC-162">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#6916035"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#diethylbenzamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#2,5-dimethyl-4-prop-2-enylpiperazine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment>https://pubchem.ncbi.nlm.nih.gov/compound/6916035</rdfs:comment>
        <rdfs:qname>SNC_162</rdfs:qname>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#SNC-80 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#SNC-80">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#123924"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#diethylbenzamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#methoxyphenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#2,5-dimethyl-4-prop-2-enylpiperazine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment>https://pubchem.ncbi.nlm.nih.gov/compound/123924</rdfs:comment>
        <rdfs:qname>SNC_80</rdfs:qname>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#SNC-86 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#SNC-86">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#119029"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#diethylbenzamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#hydroxyphenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#2,5-dimethyl-4-prop-2-enylpiperazine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment>https://pubchem.ncbi.nlm.nih.gov/compound/119029</rdfs:comment>
        <rdfs:qname>SNC_86</rdfs:qname>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#U-47109 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#U-47109">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#129390993"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#methylaminocyclohexane"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#3,4-dichlorobenzamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment>Alternative name: N-Desmethyl U-47700</rdfs:comment>
        <rdfs:comment>https://pubchem.ncbi.nlm.nih.gov/compound/129390993</rdfs:comment>
        <rdfs:comment>https://www.caymanchem.com/product/21663/u-47109</rdfs:comment>
        <rdfs:qname>U_47109</rdfs:qname>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#U-47931E -->

    <owl:Class rdf:about="http://purl.org/net/opioid#U-47931E">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#95560661"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_name"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#bromadoline"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#dimethylaminocyclohexane"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#methylbenzamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#4-bromobenzamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment>Wikipedia: https://en.wikipedia.org/wiki/Bromadoline</rdfs:comment>
        <rdfs:comment>https://pubchem.ncbi.nlm.nih.gov/compound/95560661</rdfs:comment>
        <rdfs:qname>U_47931E</rdfs:qname>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#U-48520 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#U-48520">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#13544026"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#dimethylaminocyclohexane"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#methylbenzamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#4-chlorobenzamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment>Alternative name: Deschloro U-47700</rdfs:comment>
        <rdfs:comment>https://pubchem.ncbi.nlm.nih.gov/compound/13544026</rdfs:comment>
        <rdfs:qname>U_48520</rdfs:qname>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#U-77891 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#U-77891">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#117071705"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#azaspirodecane"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#3,4-dibromobenzamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment>https://en.wikipedia.org/wiki/U-77891</rdfs:comment>
        <rdfs:comment>https://pubchem.ncbi.nlm.nih.gov/compound/117071705</rdfs:comment>
        <rdfs:qname>U_77891</rdfs:qname>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#alkenylation -->

    <owl:Class rdf:about="http://purl.org/net/opioid#alkenylation">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_process"/>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#alkenylation_of_4_position_on_piperazine -->

    <owl:Class rdf:about="http://purl.org/net/opioid#alkenylation_of_4_position_on_piperazine">
        <rdfs:subClassOf rdf:resource="http://purl.org/net/opioid#modification_of_4_position_on_piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#involves_process"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#alkenylation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label>alkenylation of 4 position on piperazine</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#alkylation_of_2_position_on_piperazine -->

    <owl:Class rdf:about="http://purl.org/net/opioid#alkylation_of_2_position_on_piperazine">
        <rdfs:subClassOf rdf:resource="http://purl.org/net/opioid#modification_of_2_position_on_piperazine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#involves_process"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#alkylation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label>alkylation of 2 position on piperazine</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#alkylation_of_4_position_on_piperazine -->

    <owl:Class rdf:about="http://purl.org/net/opioid#alkylation_of_4_position_on_piperazine">
        <rdfs:subClassOf rdf:resource="http://purl.org/net/opioid#modification_of_4_position_on_piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#involves_process"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#alkylation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label>alkylation of 4 position on piperazine</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#alkylation_of_5_position_on_piperazine -->

    <owl:Class rdf:about="http://purl.org/net/opioid#alkylation_of_5_position_on_piperazine">
        <rdfs:subClassOf rdf:resource="http://purl.org/net/opioid#modification_of_5_position_on_piperazine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#involves_process"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#alkylation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label>alkylation of 5 position on piperazine</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#alkylation_of_primary_amine_on_aminocyclohexane -->

    <owl:Class rdf:about="http://purl.org/net/opioid#alkylation_of_primary_amine_on_aminocyclohexane">
        <rdfs:subClassOf rdf:resource="http://purl.org/net/opioid#modification_of_primary_amine_on_aminocyclohexane"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#involves_process"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#alkylation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label>alkylation of primary amine on aminocyclohexane</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#alkylation_of_secondary_amide -->

    <owl:Class rdf:about="http://purl.org/net/opioid#alkylation_of_secondary_amide">
        <rdfs:subClassOf rdf:resource="http://purl.org/net/opioid#modification_of_tertiary_amide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#involves_process"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#alkylation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label>alkylation of secondary amide</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#azaspirodecane -->

    <owl:Class rdf:about="http://purl.org/net/opioid#azaspirodecane">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#bromadoline -->

    <owl:Class rdf:about="http://purl.org/net/opioid#bromadoline">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#bromine -->

    <owl:Class rdf:about="http://purl.org/net/opioid#bromine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#halogen"/>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#diethylaminocyclohexane -->

    <owl:Class rdf:about="http://purl.org/net/opioid#diethylaminocyclohexane">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#aminocyclohexane"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#ethylation_of_primary_amine_on_aminocyclohexane"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:minQualifiedCardinality rdf:datatype="http://www.w3.org/2001/XMLSchema#nonNegativeInteger">2</owl:minQualifiedCardinality>
                <owl:onClass rdf:resource="http://purl.org/net/opioid#ethyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#diethylbenzamide -->

    <owl:Class rdf:about="http://purl.org/net/opioid#diethylbenzamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substituted_benzamide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#ethylation_of_secondary_amide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#dimethylaminocyclohexane -->

    <owl:Class rdf:about="http://purl.org/net/opioid#dimethylaminocyclohexane">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#aminocyclohexane"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#methylation_of_primary_amine_on_aminocyclohexane"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:minQualifiedCardinality rdf:datatype="http://www.w3.org/2001/XMLSchema#nonNegativeInteger">2</owl:minQualifiedCardinality>
                <owl:onClass rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#ethyl_group -->

    <owl:Class rdf:about="http://purl.org/net/opioid#ethyl_group">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:label>ethyl group</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#ethylation_of_primary_amine_on_aminocyclohexane -->

    <owl:Class rdf:about="http://purl.org/net/opioid#ethylation_of_primary_amine_on_aminocyclohexane">
        <rdfs:subClassOf rdf:resource="http://purl.org/net/opioid#alkylation_of_primary_amine_on_aminocyclohexane"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#uses_as_a_substituent"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#ethyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label>ethylation of primary amine on aminocyclohexane</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#ethylation_of_secondary_amide -->

    <owl:Class rdf:about="http://purl.org/net/opioid#ethylation_of_secondary_amide">
        <rdfs:subClassOf rdf:resource="http://purl.org/net/opioid#alkylation_of_secondary_amide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#uses_as_a_substituent"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#ethyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label>ethylation of secondary amide</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#hydroxyphenyl -->

    <owl:Class rdf:about="http://purl.org/net/opioid#hydroxyphenyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#isopropyl_U-47700 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#isopropyl_U-47700">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#137700166"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#3,4-dichlorobenzamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#aminocyclohexane"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#isopropyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment>https://pubchem.ncbi.nlm.nih.gov/compound/137700166</rdfs:comment>
        <rdfs:label>isopropyl U-47700</rdfs:label>
        <rdfs:qname>isopropyl U_47700</rdfs:qname>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#methoxyphenyl -->

    <owl:Class rdf:about="http://purl.org/net/opioid#methoxyphenyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#methylaminocyclohexane -->

    <owl:Class rdf:about="http://purl.org/net/opioid#methylaminocyclohexane">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#aminocyclohexane"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#methylation_of_primary_amine_on_aminocyclohexane"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:minQualifiedCardinality rdf:datatype="http://www.w3.org/2001/XMLSchema#nonNegativeInteger">1</owl:minQualifiedCardinality>
                <owl:onClass rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#methylation_of_2_position_on_piperazine -->

    <owl:Class rdf:about="http://purl.org/net/opioid#methylation_of_2_position_on_piperazine">
        <rdfs:subClassOf rdf:resource="http://purl.org/net/opioid#alkylation_of_2_position_on_piperazine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#uses_as_a_substituent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label>methylation of 2 position on piperazine</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#methylation_of_4_position_on_piperazine -->

    <owl:Class rdf:about="http://purl.org/net/opioid#methylation_of_4_position_on_piperazine">
        <rdfs:subClassOf rdf:resource="http://purl.org/net/opioid#alkylation_of_4_position_on_piperazine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#uses_as_a_substituent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label>methylation of 4 position on piperazine</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#methylation_of_5_position_on_piperazine -->

    <owl:Class rdf:about="http://purl.org/net/opioid#methylation_of_5_position_on_piperazine">
        <rdfs:subClassOf rdf:resource="http://purl.org/net/opioid#alkylation_of_5_position_on_piperazine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#uses_as_a_substituent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label>methylation of 5 position on piperazine</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#methylation_of_primary_amine_on_aminocyclohexane -->

    <owl:Class rdf:about="http://purl.org/net/opioid#methylation_of_primary_amine_on_aminocyclohexane">
        <rdfs:subClassOf rdf:resource="http://purl.org/net/opioid#alkylation_of_primary_amine_on_aminocyclohexane"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#uses_as_a_substituent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label>methylation of primary amine on aminocyclohexane</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#methylation_of_secondary_amide -->

    <owl:Class rdf:about="http://purl.org/net/opioid#methylation_of_secondary_amide">
        <rdfs:subClassOf rdf:resource="http://purl.org/net/opioid#alkylation_of_secondary_amide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#uses_as_a_substituent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label>methylation of secondary amide</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#methylbenzamide -->

    <owl:Class rdf:about="http://purl.org/net/opioid#methylbenzamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substituted_benzamide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#methylation_of_secondary_amide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#methylenedioxy_group -->

    <owl:Class rdf:about="http://purl.org/net/opioid#methylenedioxy_group">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:label>methylenedioxy group</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#modification_of_2_position_on_piperazine -->

    <owl:Class rdf:about="http://purl.org/net/opioid#modification_of_2_position_on_piperazine">
        <rdfs:subClassOf rdf:resource="http://purl.org/net/opioid#modification_of_piperazine"/>
        <rdfs:label>modification of 2 position on piperazine</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#modification_of_4_position_on_piperidine -->

    <owl:Class rdf:about="http://purl.org/net/opioid#modification_of_4_position_on_piperidine">
        <rdfs:subClassOf rdf:resource="http://purl.org/net/opioid#modification_of_piperazine"/>
        <rdfs:label>modification of 4 position on piperazine</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#modification_of_5_position_on_piperazine -->

    <owl:Class rdf:about="http://purl.org/net/opioid#modification_of_5_position_on_piperazine">
        <rdfs:subClassOf rdf:resource="http://purl.org/net/opioid#modification_of_piperazine"/>
        <rdfs:label>modification of 5 position on piperazine</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#modification_of_aminocyclohexane -->

    <owl:Class rdf:about="http://purl.org/net/opioid#modification_of_aminocyclohexane">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_process"/>
        <rdfs:label>modification of aminocyclohexane</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#modification_of_benzamide -->

    <owl:Class rdf:about="http://purl.org/net/opioid#modification_of_benzamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_process"/>
        <rdfs:label>modification of benzamide</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#modification_of_piperazine -->

    <owl:Class rdf:about="http://purl.org/net/opioid#modification_of_piperazine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_process"/>
        <rdfs:label>modifiction of piperazine</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#modification_of_primary_amine_on_aminocyclohexane -->

    <owl:Class rdf:about="http://purl.org/net/opioid#modification_of_primary_amine_on_aminocyclohexane">
        <rdfs:subClassOf rdf:resource="http://purl.org/net/opioid#modification_of_aminocyclohexane"/>
        <rdfs:label>modification of primary amine on aminocyclohexane</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#modification_of_tertiary_amide -->

    <owl:Class rdf:about="http://purl.org/net/opioid#modification_of_tertiary_amide">
        <rdfs:subClassOf rdf:resource="http://purl.org/net/opioid#modification_of_benzamide"/>
        <rdfs:label>modification of secondary amide</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#propenyl_group -->

    <owl:Class rdf:about="http://purl.org/net/opioid#propenyl_group">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:label>propenyl group</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#propenylation -->

    <owl:Class rdf:about="http://purl.org/net/opioid#propenylation">
        <rdfs:subClassOf rdf:resource="http://purl.org/net/opioid#alkenylation"/>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#propenylation_of_4_position_on_piperazine -->

    <owl:Class rdf:about="http://purl.org/net/opioid#propenylation_of_4_position_on_piperazine">
        <rdfs:subClassOf rdf:resource="http://purl.org/net/opioid#alkenylation_of_4_position_on_piperazine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#uses_as_a_substituent"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#propenyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label>propenylation of 4 position on piperazine</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#propyl_group -->

    <owl:Class rdf:about="http://purl.org/net/opioid#propyl_group">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:label>propyl group</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#propylation_of_4_position_on_piperazine -->

    <owl:Class rdf:about="http://purl.org/net/opioid#propylation_of_4_position_on_piperazine">
        <rdfs:subClassOf rdf:resource="http://purl.org/net/opioid#alkylation_of_4_position_on_piperazine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#uses_as_a_substituent"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#propyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label>propylation of 4 position on piperazine</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#117071705 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#117071705">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#119029 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#119029">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#119404046 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#119404046">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#123924 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#123924">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#129390993 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#129390993">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#129392412 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#129392412">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#13544026 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#13544026">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#137700166 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#137700166">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#139598237 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#139598237">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#16455045 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#16455045">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#2,5-dimethyl-4-prop-2-enylpiperazine -->

    <owl:Class rdf:about="http://purl.org/net/opioid#2,5-dimethyl-4-prop-2-enylpiperazine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#piperazine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#methylation_of_2_position_on_piperazine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#methylation_of_5_position_on_piperazine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#propenylation_of_4_position_on_piperazine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#2-propenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:minQualifiedCardinality rdf:datatype="http://www.w3.org/2001/XMLSchema#nonNegativeInteger">2</owl:minQualifiedCardinality>
                <owl:onClass rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label>2,5-dimethyl-4-prop-2-enylpiperazine</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#2,5-dimethyl-4-propylpiperazine -->

    <owl:Class rdf:about="http://purl.org/net/opioid#2,5-dimethyl-4-propylpiperazine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#piperazine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#methylation_of_2_position_on_piperazine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#methylation_of_5_position_on_piperazine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#propylation_of_4_position_on_piperazine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:minQualifiedCardinality rdf:datatype="http://www.w3.org/2001/XMLSchema#nonNegativeInteger">2</owl:minQualifiedCardinality>
                <owl:onClass rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label>2,5-dimethyl-4-propylpiperazine</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#2-chlorobenzamide -->

    <owl:Class rdf:about="http://purl.org/net/opioid#2-chlorobenzamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substituted_benzamide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:minQualifiedCardinality rdf:datatype="http://www.w3.org/2001/XMLSchema#nonNegativeInteger">1</owl:minQualifiedCardinality>
                <owl:onClass rdf:resource="https://mac389.github.io/ontology#chlorine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#2-propenyl -->

    <owl:Class rdf:about="http://purl.org/net/opioid#2-propenyl">
        <rdfs:subClassOf rdf:resource="http://purl.org/net/opioid#propenyl_group"/>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#3,4-dibromobenzamide -->

    <owl:Class rdf:about="http://purl.org/net/opioid#3,4-dibromobenzamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substituted_benzamide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:minQualifiedCardinality rdf:datatype="http://www.w3.org/2001/XMLSchema#nonNegativeInteger">2</owl:minQualifiedCardinality>
                <owl:onClass rdf:resource="http://purl.org/net/opioid#bromine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label>3,4-dibromobenzamide</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#3,4-dichlorobenzamide -->

    <owl:Class rdf:about="http://purl.org/net/opioid#3,4-dichlorobenzamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substituted_benzamide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:minQualifiedCardinality rdf:datatype="http://www.w3.org/2001/XMLSchema#nonNegativeInteger">2</owl:minQualifiedCardinality>
                <owl:onClass rdf:resource="https://mac389.github.io/ontology#chlorine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label>3,4-dichlorobenzamide</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#3,4-methylenedioxy_U-47700 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#3,4-methylenedioxy_U-47700">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#139598237"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#methylbenzamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#methylenedioxy_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#aminocyclohexane"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment>https://cdn.caymanchem.com/cdn/insert/22753.pdf</rdfs:comment>
        <rdfs:comment>https://pubchem.ncbi.nlm.nih.gov/compound/139598237</rdfs:comment>
        <rdfs:label>3,4-methylenedioxy U-47700</rdfs:label>
        <rdfs:qname>3,4_methylenedioxy U_47700</rdfs:qname>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#3-chlorobenzamide -->

    <owl:Class rdf:about="http://purl.org/net/opioid#3-chlorobenzamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substituted_benzamide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:minQualifiedCardinality rdf:datatype="http://www.w3.org/2001/XMLSchema#nonNegativeInteger">1</owl:minQualifiedCardinality>
                <owl:onClass rdf:resource="https://mac389.github.io/ontology#chlorine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#3348281 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#3348281">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#387108493 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#387108493">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#387130371 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#387130371">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#387183843 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#387183843">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#4-bromobenzamide -->

    <owl:Class rdf:about="http://purl.org/net/opioid#4-bromobenzamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substituted_benzamide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:minQualifiedCardinality rdf:datatype="http://www.w3.org/2001/XMLSchema#nonNegativeInteger">1</owl:minQualifiedCardinality>
                <owl:onClass rdf:resource="http://purl.org/net/opioid#bromine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#4-chlorobenzamide -->

    <owl:Class rdf:about="http://purl.org/net/opioid#4-chlorobenzamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substituted_benzamide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:minQualifiedCardinality rdf:datatype="http://www.w3.org/2001/XMLSchema#nonNegativeInteger">1</owl:minQualifiedCardinality>
                <owl:onClass rdf:resource="https://mac389.github.io/ontology#chlorine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#4-methylpiperazine -->

    <owl:Class rdf:about="http://purl.org/net/opioid#4-methylpiperazine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#piperazine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#methylation_of_4_position_on_piperazine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#54269004 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#54269004">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#54448940 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#54448940">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#6916035 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#6916035">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#7.5_times_morphine -->

    <owl:Class rdf:about="http://purl.org/net/opioid#7.5_times_morphine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#potency"/>
        <rdfs:label>7.5 times morphine</rdfs:label>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#95560661 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#95560661">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- http://purl.org/net/opioid#N,N-didesmethyl_AH_7921 -->

    <owl:Class rdf:about="http://purl.org/net/opioid#N,N-didesmethyl_AH_7921">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#119404046"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#3,4-dichlorobenzamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#aminocyclohexane"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment>https://pubchem.ncbi.nlm.nih.gov/compound/119404046</rdfs:comment>
        <rdfs:label>N,N-didesmethyl AH 7921</rdfs:label>
        <rdfs:qname>N,N_didesmethyl AH_7921</rdfs:qname>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#A-3217 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#A-3217">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#A-3331 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#A-3331">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#AH-7921 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#AH-7921">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#187760"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#decrease_in_ventilation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#euphoria"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#hypertension"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#itching"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#miosis"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#nausea"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#seizures"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#somnolence"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#tachycardia"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#doxylam"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#dimethylaminocyclohexane"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#m,p-dichlorobenzamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_potency"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#AH-7921_is_7.5_times_as_potent_as_morphine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:qname>AH_7921</rdfs:qname>
        <rdfs:seeAlso>Wikipedia: https://en.wikipedia.org/wiki/AH-7921</rdfs:seeAlso>
        <rdfs:seeAlso>https://pubchem.ncbi.nlm.nih.gov/compound/187760</rdfs:seeAlso>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#AMF -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#AMF">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#C3-methoxy-C6-one-phenanthrene -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#C3-methoxy-C6-one-phenanthrene">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#phenanthrene_nucleus"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#CYP_enzyme -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#CYP_enzyme">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#protein_entity"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">CYP enzyme</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#ChEBI_ID -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#ChEBI_ID">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#identifier"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">ChEBI ID</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#EAZ-91-05 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#EAZ-91-05">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_ChEBI_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#119915"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3345"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#psicofentanil"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#indolethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#4-(quinuclidin-3-yl)-piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#IC-6 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#IC-6">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#MAF -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#MAF">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#MT-45 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#MT-45">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#431865"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#IC-6"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#alpha-benzylphenylethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#cyclohexane"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#lefetamine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperazine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#N-dealkylation -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#N-dealkylation">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#dealkylation"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#N-methylnorcarfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#N-methylnorcarfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#carfentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#iso-methyl-4-methylformate"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#NFEPP -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#NFEPP">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#O-dealkylation -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#O-dealkylation">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#dealkylation"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#OMF -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#OMF">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#Pgp_efflux_pump -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#Pgp_efflux_pump">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#protein_entity"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">pgp efflux pump</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#PubChem_ID -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#PubChem_ID">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#identifier"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">PubChem ID</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#R-30490 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#R-30490">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#4-dimethylether-piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#RR49 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#RR49">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#2&apos;-fluorophenyl-beta&apos;-fluoroethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#Subutex -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#Subutex">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#TMFUF -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#TMFUF">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#U-47700 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#U-47700">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#13544015"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#euphoria"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#pink"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#dimethylaminocyclohexane"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#m,p-dichlorobenzamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#structural_isomer_of"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#AH-7921"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment>https://en.wikipedia.org/wiki/U-47700</rdfs:comment>
        <rdfs:comment>https://pubchem.ncbi.nlm.nih.gov/compound/13544016</rdfs:comment>
        <rdfs:qname>U_47700</rdfs:qname>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#U-49900 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#U-49900">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#129392412"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#diethylaminocyclohexane"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#methylbenzamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="http://purl.org/net/opioid#3,4-dichlorobenzamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#integer">23349712</rdfs:comment>
        <rdfs:comment>https://pubchem.ncbi.nlm.nih.gov/compound/129392412</rdfs:comment>
        <rdfs:comment>https://www.caymanchem.com/product/21098/u-49900</rdfs:comment>
        <rdfs:qname>U_49900</rdfs:qname>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#acetamide -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#acetamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#propanamide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#replacement_of_ethyl_group_with_methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#acetyl_fentanyl_is_10-15_times_stronger_than_morphine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#acetyl_fentanyl_is_10-15_times_stronger_than_morphine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#10-15_times_morhpine"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">acetyl fentanyl is 10-15 times stronger than morphine</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#acetyl_group -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#acetyl_group">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">acetyl group</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#acetyldihydrocodeine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#acetyldihydrocodeine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_ChEBI_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#135453"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#5463874"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#dihydrocodeine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#acetyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#acetylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#acetylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#527015"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#decrease_in_ventilation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#euphoria"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#itching"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#miosis"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#nausea"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#somnolence"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#acetamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_potency"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#acetyl_fentanyl_is_10-15_times_stronger_than_morphine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Wikipedia: https://en.wikipedia.org/wiki/Acetylfentanyl</rdfs:comment>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#acrylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#acrylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#10314851"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propenamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Wikipedia: https://en.wikipedia.org/wiki/Acrylfentanyl</rdfs:comment>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">acrylfentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#addition_of_allyl_group_on_position_3_of_piperidine_ring -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#addition_of_allyl_group_on_position_3_of_piperidine_ring">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#alkylation_of_3_position_on_piperdine"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of allyl group on position 3 of piperidine ring</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#addition_of_benzyl_group_on_alpha_position_of_ethyl_chain_of_phenethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#addition_of_benzyl_group_on_alpha_position_of_ethyl_chain_of_phenethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_alpha&apos;_position_on_ethyl_chain"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#involves_process"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#aromatization"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of benzyl group on alpha position of ethyl chain of phenethyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#addition_of_chlorine_to_meta_and_para_positions_on_phenyl_of_anilino_phenyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#addition_of_chlorine_to_meta_and_para_positions_on_phenyl_of_anilino_phenyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#halogenation_of_meta-_and_para-_positions_on_phenyl_ring"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of chlorine to meta and para positions on phenyl ring of anilinophenyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#addition_of_dimethyl_ester_at_4_position_on_piperdine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#addition_of_dimethyl_ester_at_4_position_on_piperdine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#addition_of_ester_on_position_3_of_piperidine_ring"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of methylformate at 4 position on piperdine</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#addition_of_dimethyl_ether_at_4_position_on_piperdine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#addition_of_dimethyl_ether_at_4_position_on_piperdine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_4_position_on_piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#involves_process"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#dehydration_of_alcohol"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of dimethyl ether at 4 position on piperdine</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#addition_of_ester_on_position_3_of_piperidine_ring -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#addition_of_ester_on_position_3_of_piperidine_ring">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_4_position_on_piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#involves_process"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#esterification"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of ester on position 4 of piperidine ring</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#addition_of_ethylcyclopropane -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#addition_of_ethylcyclopropane">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_on_iso_position"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of ethylcyclopropane</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#addition_of_fluorine_to_meta_and_para_positions_on_phenyl_ring_of_anilinophenyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#addition_of_fluorine_to_meta_and_para_positions_on_phenyl_ring_of_anilinophenyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#halogenation_of_meta-_and_para-_positions_on_phenyl_ring"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:minQualifiedCardinality rdf:datatype="http://www.w3.org/2001/XMLSchema#nonNegativeInteger">2</owl:minQualifiedCardinality>
                <owl:onClass rdf:resource="https://mac389.github.io/ontology#fluorine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of fluorine to meta and para positions on phenyl ring of anilinophenyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#addition_of_furanyl_at_beta_position -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#addition_of_furanyl_at_beta_position">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#cyclization_of_aklyl_chain_at_alpha&apos;_position"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#furanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">cyclization of alkyl chain of propanamide at alpha&apos; position to furanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#addition_of_iso-methyl_group -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#addition_of_iso-methyl_group">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_on_iso_position"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of iso-methyl group</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#addition_of_isobutyl_group_at_beta_position -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#addition_of_isobutyl_group_at_beta_position">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_at_alpha_position"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">modification of propanamide at alpha&apos; position by addition of methyl group</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#addition_of_methoxy_group_at_beta_position -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#addition_of_methoxy_group_at_beta_position">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_at_beta_position"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methoxy_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of methoxy group at beta&apos; position</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#addition_of_methoxy_group_to_ortho_position_anilinophenyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#addition_of_methoxy_group_to_ortho_position_anilinophenyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_ortho_position_on_phenyl_ring"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methoxy_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of methoxy group to ortho position on phenyl ring of anilinophenyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#addition_of_methyl_group_at_ortho_position_on_anilinophenyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#addition_of_methyl_group_at_ortho_position_on_anilinophenyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_ortho_position_on_phenyl_ring"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of methyl group to ortho position on phenyl ring of anilinophenyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#addition_of_phenyl_group_at_4_position_on_piperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#addition_of_phenyl_group_at_4_position_on_piperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_4_position_on_piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#involves_process"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#aromatization"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of phenyl group at 4 position on piperidine</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#addition_of_phenylpropanoyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#addition_of_phenylpropanoyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_at_beta_position"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of phenyl at beta&apos; position</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#addition_of_quinuclidin-3-yl_at_4_position_on_piperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#addition_of_quinuclidin-3-yl_at_4_position_on_piperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_4_position_on_piperidine"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of quinuclidin-3-yl at 4 position on piperidine</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#akathisia -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#akathisia">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#biological_effect"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">akathisia</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#alfenta -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#alfenta">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#alfentanil -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#alfentanil">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#alfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#alfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_ChEBI_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#2569"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#51263"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#decrease_in_ventilation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#euphoria"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#itching"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#miosis"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#nausea"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#somnolence"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#alfenta"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#alfentanil"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#rapifen"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#1-methyl-4-ethyl-oxatetrazole"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#4-dimethylether-piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#substrate_of"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#Pgp_efflux_pump"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#alkoxylation -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#alkoxylation">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#esterification"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#alkoxylation_of_para_position_on_phenyl_ring -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#alkoxylation_of_para_position_on_phenyl_ring">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_para_position"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of alkoxy to para position on phenyl ring of anilinophenyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#alkylation -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#alkylation">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_process"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#alkylation_of_2_position_on_piperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#alkylation_of_2_position_on_piperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_2_position_on_piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#involves_process"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#alkylation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">alkylation of 2 position on piperidine</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#alkylation_of_3_position_on_piperdine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#alkylation_of_3_position_on_piperdine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_3_positioon_on_piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#involves_process"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#alkylation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">alkylation of 3 position on piperdine</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#alkylation_of_5_position_on_piperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#alkylation_of_5_position_on_piperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_5_position_on_piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#involves_process"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#alkylation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">alkylation of 5 position on piperidine</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#allyl_group -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#allyl_group">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">allyl group</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#alpha-benzylphenylethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#alpha-benzylphenylethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#phenethyl_with_modification_to_alpha_position"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_benzyl_group_on_alpha_position_of_ethyl_chain_of_phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:minQualifiedCardinality rdf:datatype="http://www.w3.org/2001/XMLSchema#nonNegativeInteger">2</owl:minQualifiedCardinality>
                <owl:onClass rdf:resource="https://mac389.github.io/ontology#phenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#alpha-methyl-beta-hydroxy-phenethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#alpha-methyl-beta-hydroxy-phenethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#phenethyl_with_modification_to_alpha_and_beta_positions"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methlylation_of_alpha_position_on_ethyl_chain"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#hydroxylation_of_beta&apos;_position_on_ethyl_chain"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#hydroxy_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#alpha-methyl-thiophenethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#alpha-methyl-thiophenethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#phenethyl_with_modification_to_alpha_position_and_phenyl_ring"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methlylation_of_alpha_position_on_ethyl_chain"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#substitution_of_phenyl_with_thiophene"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#thiophene"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#alpha-methylphenethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#alpha-methylphenethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#phenethyl_with_modification_to_alpha_position"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methlylation_of_alpha_position_on_ethyl_chain"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#aminocyclohexane -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#aminocyclohexane">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#anileridine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#anileridine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#leritine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Derivative of isonipecotic acid, a GABA A partial agonist. 
Other name is the more descriptive 4-piperidine-carboxylic acid. 

The H off the piperidine is substituted with an anilinophenethyl
The H iso to the N is substitued with a phenyl. 
The carboxylic acid is converted to a methyl ester.</rdfs:comment>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">NEEDS MORE CURATION</rdfs:comment>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#anilinophenyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#anilinophenyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#anilinophenyl_with_meta_and_para_substitutions -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#anilinophenyl_with_meta_and_para_substitutions">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">anilinophenyl with meta and para substitutions</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#anilinophenyl_with_meta_substitution -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#anilinophenyl_with_meta_substitution">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">anilinophenyl with meta substitution</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#anilinophenyl_with_ortho_substitution -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#anilinophenyl_with_ortho_substitution">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">anilinophenyl with ortho substitution</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#anilinophenyl_with_para_substitution -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#anilinophenyl_with_para_substitution">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">anilinophenyl with para substitution</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#animal_study -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#animal_study">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#source_of_information"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">animal study</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#aromatization -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#aromatization">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_process"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#benzamide -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#benzamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#propanamide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#replacement_with_benzoyl_moiety"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">benzamide</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#benzodioxole -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#benzodioxole">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#benzodioxolefentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#benzodioxolefentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#129597846"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#1,3-benzodioxole_carboxamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Wikipedia: https://en.wikipedia.org/wiki/Benzodioxolefentanyl</rdfs:comment>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#benzoyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#benzoyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#benzoylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#benzoylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#139025450"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#benzamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">https://en.wikipedia.org/wiki/Benzoylfentanyl</rdfs:comment>
        <rdfs:qname>benzoylfentanyl</rdfs:qname>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#benzyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#benzyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#benzylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#benzylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#252141"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenylmethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">https://en.wikipedia.org/wiki/Benzylfentanyl</rdfs:comment>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#beta-hydroxylation -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#beta-hydroxylation">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#hydroxylation"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#beta-hydroxyphenethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#beta-hydroxyphenethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#phenethyl_with_modification_to_beta_position"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#hydroxylation_of_beta&apos;_position_on_ethyl_chain"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#hydroxy_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#beta-hydroxythiophenethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#beta-hydroxythiophenethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#phenethyl_with_modification_to_beta_position_and_phenyl_ring"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#substitution_of_phenyl_with_thiophene"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#hydroxylation_of_beta&apos;_position_on_ethyl_chain"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#beta-methylphenethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#beta-methylphenethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#phenethyl_with_modification_to_beta_position"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methylation_of_beta_position_on_ethyl_chain_of_phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#biological_effect -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#biological_effect">
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">biological effect</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#brifentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#brifentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#alfentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#A-3331"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_ethanamide_ether"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#o-fluoroanilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#1-methyl-4-ethyl-oxatetrazole"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3-methylpiperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Wikipedia: https://en.wikipedia.org/wiki/Brifentanil</rdfs:comment>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#brorphine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#brorphine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Honestly I have no idea yet how to curate this molecule. 

The phenethyl component is shortened to a methyl, methylated, and the phenyl ring is halogenated yielding the substitution 4&apos;-bromophenylethyl

The carboxamide and anilinophenyl parts are fused to a benzimidazol-2-one. 


The piperidine portion is unscathed.</rdfs:comment>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">NEEDS MORE CURATION</rdfs:comment>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#buprenorphine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#buprenorphine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_ChEBI_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3216"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#644073"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_metabolite"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#norbuprenorphine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#Subutex"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenanthrene_nucleus"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">NEEDS MORE CURATION</rdfs:comment>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#butanamide -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#butanamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#propanamide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_butyl_group_at_beta&apos;_position"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#butyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#butyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#butylenamide -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#butylenamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#propanamide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#increase_in_length_of_alkyl_chain_of_propanamide_from_three_carbons_to_four_carbons_and_desaturation_of_carbon_bond_between_alpha&apos;_and_beta&apos;_carbons"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">butyl-2-en-amide</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#butyrfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#butyrfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#621174"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#butanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Wikipedia: https://en.wikipedia.org/wiki/Butyrfentanyl</rdfs:comment>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#butyrl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#butyrl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#carfentanil -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#carfentanil">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#carfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#carfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#62156"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#decrease_in_ventilation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#euphoria"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#itching"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#miosis"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#nausea"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#somnolence"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#carfentanil"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#wildnil"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#4-methylformate-piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#change_in_length_of_alkyl_chain -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#change_in_length_of_alkyl_chain">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_carboxamide"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">change in length of alkyl chain of propanamide</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#change_in_length_of_ethyl_chain -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#change_in_length_of_ethyl_chain">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_phenethyl"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">change in length of ethyl chain</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#chemical_entity -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#chemical_entity">
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">For each chemical entity:

1. Chemical Class
2. Xrefs
3. Clinical Effects
4. Metabolism (metabolites and processes it undergoes)
5. PGP pump substrates (if known)


1. What are other molecules with this similar structure?
2. What unique moieties or functional groups does this structure possess?
3. What symptoms are seen in overdose?
4. Are there active metabolites?
5. Is the molecule a substrate for the PGP pump?
6. Are there any treatments beyond the 0.4 mg IV naloxone reported to be necessary to treat overdose?
7. What NSOs have effects beyond opioids?</rdfs:comment>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">chemical entity</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#chemical_process -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#chemical_process">
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">chemical process</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#chlorination_of_para_position_on_phenyl_ring -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#chlorination_of_para_position_on_phenyl_ring">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#halogenation_of_para_position_on_phenyl_ring"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#chlorine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of chlorine to para position on phenyl ring of anilinophenyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#chlorine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#chlorine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#halogen"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#codeine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#codeine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_ChEBI_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#16714"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#5284371"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_metabolite"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#morphine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_metabolite"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#norcodeine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenanthrene_nucleus"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#substrate_of"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#2D6"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#substrate_of"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3A4"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#crotonylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#crotonylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#butylenamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#structural_isomer_of"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#cyclopropylfentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#cyclization_of_alkyl_chain -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#cyclization_of_alkyl_chain">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_carboxamide"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">cyclization of alkyl chain</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#cyclohexane -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#cyclohexane">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#cyclopentane_carboxamide -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#cyclopentane_carboxamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#propanamide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_cyclopentyl_group_at_beta&apos;_position"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#cyclopentyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">cyclopentane carboxamide</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#cyclopentyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#cyclopentyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#cyclopentylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#cyclopentylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#126682248"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#cyclopentane_carboxamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#cyclopropane_carboxamide -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#cyclopropane_carboxamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#propanamide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_cyclopropyl_group_at_beta&apos;_position"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#cyclopropyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">cyclopropane carboxamide</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#cyclopropyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#cyclopropyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#cyclopropylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#cyclopropylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#cyclopropane_carboxamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#structural_isomer_of"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#crotonylfentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#dealkylation -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#dealkylation">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_process"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#decrease_in_length_of_alkyl_chain_of_propanamide -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#decrease_in_length_of_alkyl_chain_of_propanamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#change_in_length_of_alkyl_chain"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">decrease in length of alkyl chain of propanamide</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#decrease_in_ventilation -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#decrease_in_ventilation">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#biological_effect"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">decrease in ventilation</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#dehydration_of_alcohol -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#dehydration_of_alcohol">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_process"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">dehydration of alcohol</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#desaturation_of_alkyl_chain -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#desaturation_of_alkyl_chain">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_carboxamide"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">desaturation of alkyl chain</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#desaturation_of_alkyl_chain_from_propanamide_to_propenamide -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#desaturation_of_alkyl_chain_from_propanamide_to_propenamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#desaturation_of_alkyl_chain_on_propanamide"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">desaturation of alkyl chain from propanamide to propenamide</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#desaturation_of_alkyl_chain_on_propanamide -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#desaturation_of_alkyl_chain_on_propanamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_carboxamide"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">desaturation of alkyl chain on propanamide</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#diazine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#diazine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#dihydrocodeine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#dihydrocodeine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_ChEBI_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#135276"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#5284543"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_metabolite"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#codeine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_metabolite"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#dihydromorphine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenanthrene_nucleus"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#dihydromorphine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#dihydromorphine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#dihydromorphinone -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#dihydromorphinone">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#dimethyl_ether -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#dimethyl_ether">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">dimethyl ether</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#diphenylheptylamine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#diphenylheptylamine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#dolophine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#dolophine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#doxylam -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#doxylam">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#duration_of_action -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#duration_of_action">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#pharmacokinetic_property"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">duration of action</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#erowid -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#erowid">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#source_of_information"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#esterification -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#esterification">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_process"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#ethyl_to_methyl_with_no_change_to_phenyl_group -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#ethyl_to_methyl_with_no_change_to_phenyl_group">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#shortening_of_ethyl_chain"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">decrease in lengthy of akyl chain from two carbons to one carbon</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#ethyl_to_propyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#ethyl_to_propyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#legnthening_of_ethyl_chain"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">increase in length of alkyl chain from two carbons to three carbons</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#euphoria -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#euphoria">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#biological_effect"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">euphoria</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#fentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#fentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_metabolite"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#norfentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenylpiperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#substrate_of"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#Pgp_efflux_pump"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#substrate_of"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3A4"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#fluorination_of_2_position_on_piperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#fluorination_of_2_position_on_piperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#halogenation_of_2_position_on_piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#uses_as_a_substituent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fluorine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">fluorination of 2 position on piperidine</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#fluorination_of_3_position_on_piperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#fluorination_of_3_position_on_piperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#halogenation_of_3_position_on_piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#uses_as_a_substituent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fluorine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">fluorination of 3 position on piperidine</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#fluorination_of_meta_position -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#fluorination_of_meta_position">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#halogenation_of_meta_position"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fluorine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of fluorine to meta position on phenyl ring of anilinophenyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#fluorination_of_ortho_position_on_phenyl_ring -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#fluorination_of_ortho_position_on_phenyl_ring">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#halogenation_of_ortho_position_on_phenyl_ring"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fluorine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of fluorine to ortho position on phenyl ring of anilinophenyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#fluorination_of_para_position_on_phenyl_ring -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#fluorination_of_para_position_on_phenyl_ring">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#halogenation_of_para_position_on_phenyl_ring"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fluorine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of fluorine to para position on phenyl ring of anilinophenyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#fluorine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#fluorine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#halogen"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#furan-2-carboxamide -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#furan-2-carboxamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#propanamide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_furanyl_at_beta_position"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#furanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#furan_carboxamide -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#furan_carboxamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#propanamide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_furanyl_at_beta_position"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#furanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">furan carboxamide</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#furanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#furanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#furanyl_4-methylene -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#furanyl_4-methylene">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">I don&apos;t know what the important of this chenmical is yet. 8/4/2020.</rdfs:comment>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">NEEDS MORE CURATION</rdfs:comment>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">furanyl 4-methylene</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#furanylethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#furanylethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#substitution_of_phenyl_with_furanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#furanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#furanylethylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#furanylethylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#furanylethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#furanylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#furanylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#13653606"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#furan_carboxamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#glorb -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#glorb">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#biological_effect"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">glorb</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#glucuronidase -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#glucuronidase">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#protein_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#glucuronidation -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#glucuronidation">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_process"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#halogen -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#halogen">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#halogenation -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#halogenation">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_process"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#halogenation_of_2_position_on_piperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#halogenation_of_2_position_on_piperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_2_position_on_piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#involves_process"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#halogenation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">halogenation of 2 position on piperidine</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#halogenation_of_3_position_on_piperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#halogenation_of_3_position_on_piperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_3_positioon_on_piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#involves_process"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#halogenation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">halogenation of 3 position on piperidine</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#halogenation_of_meta-_and_para-_positions_on_phenyl_ring -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#halogenation_of_meta-_and_para-_positions_on_phenyl_ring">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_meta-_and_para-_positions_on_phenyl_ring"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of halogen to meta- and para- positions on phenyl ring of anilinophenyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#halogenation_of_meta_position -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#halogenation_of_meta_position">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modficiation_of_meta_position"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of halogen to meta position on phenyl ring of anilinophenyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#halogenation_of_ortho_position_on_phenyl_ring -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#halogenation_of_ortho_position_on_phenyl_ring">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_ortho_position_on_phenyl_ring"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of halogen to ortho position on phenyl ring of anilinophenyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#halogenation_of_para_position_on_phenyl_ring -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#halogenation_of_para_position_on_phenyl_ring">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_para_position"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of halogen to para position on phenyl ring of anilinophenyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#halogenation_of_phenethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#halogenation_of_phenethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#halogenation_of_2&apos;_position_on_phenyl_ring_of_phenethyl"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fluorine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">fluorination of 2&apos; position on phenyl ring of phenethyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#heroin -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#heroin">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_ChEBI_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#27808"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#5462328"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#decrease_in_ventilation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#euphoria"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#itching"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#maoi_inhibition"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#miosis"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#nausea"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#somnolence"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_metabolite"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#morphine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenanthrene_nucleus"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#homofentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#homofentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#618626"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenylpropyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#hydromorphine-3-glucuronide -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#hydromorphine-3-glucuronide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#akathisia"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#hyperalgesia"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#myoclonus"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#hydromorphone"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#metabolite_of"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#hydromorphone"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#hydromorphone -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#hydromorphone">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_ChEBI_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#5790"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#5284570"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#decrease_in_ventilation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#euphoria"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#itching"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#miosis"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#nausea"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#seizures"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#somnolence"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#oxidation_of_6-hydroxyl_on_phenanthrene_to_6-one"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#reduction_of_double_bond_between_C7_and_C8"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#dihydromorphinone"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenanthrene_nucleus"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#hydroxy_group -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#hydroxy_group">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">hydroxy group</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#hydroxylation -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#hydroxylation">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_process"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#hydroxylation_of_para_position_on_phenyl_ring -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#hydroxylation_of_para_position_on_phenyl_ring">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_para_position"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#hydroxy_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of hydroxy group to para position on phenyl ring of anilinophenyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#hyperalgesia -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#hyperalgesia">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#biological_effect"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">hyperalgesia</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#hypertension -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#hypertension">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#biological_effect"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">hypertension</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#identifier -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#identifier"/>
    


    <!-- https://mac389.github.io/ontology#increase_in_length_of_alkyl_chain_of_propanamide -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#increase_in_length_of_alkyl_chain_of_propanamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#change_in_length_of_alkyl_chain"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">increase in length of alkyl chain of propanamide</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#increase_in_length_of_alkyl_chain_of_propanamide_from_three_carbons_to_five_carbons -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#increase_in_length_of_alkyl_chain_of_propanamide_from_three_carbons_to_five_carbons">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#increase_in_length_of_alkyl_chain_of_propanamide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#butyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">increase in length of alkyl chain of propanamide from three carbons to five carbons</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#increase_in_length_of_alkyl_chain_of_propanamide_from_three_carbons_to_four_carbons_and_desaturation_of_carbon_bonds -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#increase_in_length_of_alkyl_chain_of_propanamide_from_three_carbons_to_four_carbons_and_desaturation_of_carbon_bonds">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#addition_of_butyl_group_at_beta&apos;_position"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">increase in length of alkyl chain of propanamide from three carbons to four carbons and desaturation of carbon bonds</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#increase_in_ventilation -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#increase_in_ventilation">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#biological_effect"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">increase in ventilation</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#indole -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#indole">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#indolethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#indolethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#subsitution_of_phenyl_with_indole"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#indole"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#inferred_benzamide_derivatives -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#inferred_benzamide_derivatives">
        <owl:equivalentClass>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#benzamide"/>
            </owl:Restriction>
        </owl:equivalentClass>
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">This set is the output of the DL Query &quot;has part some benzamide&quot;. 

I created it because it was not clear to me how to replicate this query in SPARQL. 

I intend for this class to be used to populate the list of subtances used in the frontend.</rdfs:comment>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Inferred Benzamide Derviatives</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#iso-methyl-4-methylformate -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#iso-methyl-4-methylformate">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_dimethyl_ester_at_4_position_on_piperdine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_iso-methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methylformate"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#isobutyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#isobutyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#isobutyramide -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#isobutyramide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#propanamide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_isobutyl_group_at_beta_position"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#isobutyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#isobutyrylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#isobutyrylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#isobutyramide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#structural_isomer_of"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#butyrfentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#isofentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#isofentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3-methylfentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenylmethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3-methylpiperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#isopropyl_group -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#isopropyl_group">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">isopropyl group</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#itching -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#itching">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#biological_effect"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">itching</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#lefetamine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#lefetamine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#legnthening_of_ethyl_chain -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#legnthening_of_ethyl_chain">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#change_in_length_of_ethyl_chain"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">increase in length of ethyl chain</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#leritine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#leritine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#lofentanil -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#lofentanil">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#lofentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#lofentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_ChEBI_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#61095"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#decrease_in_ventilation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#euphoria"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#itching"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#miosis"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#nausea"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#somnolence"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#carfentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#lofentanil"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3-methyl-4-methylethanoate-piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#m-fluoroanilinophenyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#m-fluoroanilinophenyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#anilinophenyl_with_meta_substitution"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fluorination_of_meta_position"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fluorine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#maoi_inhibition -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#maoi_inhibition">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#biological_effect"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">maoi inhibition</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#meta-fluorofentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#meta-fluorofentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#m-fluoroanilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#methadone -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#methadone">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_ChEBI_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#6807"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#4095"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#decrease_in_ventilation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#miosis"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#somnolence"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_metabolite"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#2-ethylidene-1,5-dimethyl-3,3-diphenylpyrrolidine_(EDDP)"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#diphenylheptylamine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_trade_name"/>
                <owl:someValuesFrom>
                    <owl:Class>
                        <owl:unionOf rdf:parseType="Collection">
                            <rdf:Description rdf:about="https://mac389.github.io/ontology#dolophine"/>
                            <rdf:Description rdf:about="https://mac389.github.io/ontology#methadose"/>
                        </owl:unionOf>
                    </owl:Class>
                </owl:someValuesFrom>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#inhibits"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#Pgp_efflux_pump"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#metabolized_by"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#2D6"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#metabolized_by"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3A4"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Checklist for each chemical:

- trade name 
- uses SLC infflux (not for [7/14/2020], couldn&apos;t find enough data)
- what functional groups
- is subject to PGP efflux
- has metabolite 
- experiences compared to 
- has reported effects
- has reported route of administration
- has reported congestants
- references to other databases
- hepatic metabolism</rdfs:comment>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Citation for PGP efflux inhibition: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5725546/</rdfs:comment>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#methadose -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#methadose">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#methlylation_of_alpha_position_on_ethyl_chain -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#methlylation_of_alpha_position_on_ethyl_chain">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_alpha&apos;_position_on_ethyl_chain"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#involves_process"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#alkylation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">methylation of alpha position on ethyl chain</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#methoxy_group -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#methoxy_group">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">methoxy group</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#methoxyacetylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#methoxyacetylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#968688"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_ethanamide_ether"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_street_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#MAF"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">I could find no experiences online, Erowide or otherwise.</rdfs:comment>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Wikipedia: https://en.wikipedia.org/wiki/Methoxyacetylfentanyl</rdfs:comment>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#methoxylation_of_C3_hydroxyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#methoxylation_of_C3_hydroxyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_C3"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">methoxylation of C3 hydroxyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#methoxylation_of_para_position_on_phenyl_ring -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#methoxylation_of_para_position_on_phenyl_ring">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#alkoxylation_of_para_position_on_phenyl_ring"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methoxy_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of methoxy group to para position on phenyl ring of anilinophenyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#methyl_ethanamide_ether -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#methyl_ethanamide_ether">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#propanamide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_methoxy_group_at_beta_position"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">methyl acetamide ether</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#methyl_group -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#methyl_group">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">methyl group</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#methylation -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#methylation">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#alkylation"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#methylation_of_beta_position_on_ethyl_chain_of_phenethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#methylation_of_beta_position_on_ethyl_chain_of_phenethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_beta&apos;_position_on_ethyl_chain"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#involves_process"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#alkylation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">methylation of beta position on ethyl chain of phenethyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#methylation_on_2_position_on_piperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#methylation_on_2_position_on_piperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#alkylation_of_2_position_on_piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#uses_as_a_substituent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">methylation of 2 position on piperidine</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#methyldation_of_5_position_on_piperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#methyldation_of_5_position_on_piperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#alkylation_of_5_position_on_piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">methylation of 5 position on piperidine</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#methylethanoate -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#methylethanoate">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#methylformate -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#methylformate">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#miosis -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#miosis">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#biological_effect"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">miosis</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#mirfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#mirfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#furan-2-carboxamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#pyrazine_(1,4-diazine)"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:seeAlso rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Antagonizes alfentanil at low doses? 

 France, CP; Winger, G; Medzihradsky, F; Seggel, MR; Rice, KC; Woods, JH (Aug 1991). &quot;Mirfentanil: pharmacological profile of a novel fentanyl derivative with opioid and nonopioid effects&quot;. Journal of Pharmacology and Experimental Therapeutics. 258 (2): 502–10. PMID 1650830.</rdfs:seeAlso>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#modfication_of_ethyl_chain -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#modfication_of_ethyl_chain">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_phenethyl"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">modification of ethyl chain</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#modficiation_of_meta_position -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#modficiation_of_meta_position">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_anilinophenyl"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">modification of meta position on phenyl ring of anilinophenyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#modification_at_alpha_position -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#modification_at_alpha_position">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_carboxamide"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">modification of propanamide at alpha&apos; position</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#modification_at_beta_position -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#modification_at_beta_position">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_carboxamide"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">modification of propanamide at beta&apos; position</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#modification_of_2_position_on_piperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#modification_of_2_position_on_piperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_piperidine"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">modification of 2 position on piperidine</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#modification_of_3_positioon_on_piperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#modification_of_3_positioon_on_piperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_piperidine"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">modification of 3 position on piperidine</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#modification_of_4_position_on_piperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#modification_of_4_position_on_piperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_piperidine"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">modification of 4 position on piperidine</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#modification_of_5_position_on_piperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#modification_of_5_position_on_piperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_piperidine"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">modification of 5 position on piperidine</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#modification_of_C3 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#modification_of_C3">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_phenanthrene_nucleus"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">modification of C3</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#modification_of_C6 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#modification_of_C6">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_phenanthrene_nucleus"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">modification of C6</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#modification_of_anilinophenyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#modification_of_anilinophenyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_process"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">modification of anilinophenyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#modification_of_carboxamide -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#modification_of_carboxamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_process"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">modification of propanamide</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#modification_of_meta-_and_para-_positions_on_phenyl_ring -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#modification_of_meta-_and_para-_positions_on_phenyl_ring">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_anilinophenyl"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">modification of meta- and para- positions on phenyl ring</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#modification_of_ortho_position_on_phenyl_ring -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#modification_of_ortho_position_on_phenyl_ring">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_anilinophenyl"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">modification of ortho position on phenyl ring of anilinophenyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#modification_of_para_position -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#modification_of_para_position">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_anilinophenyl"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">modification of para position on phenyl ring</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#modification_of_phenanthrene_nucleus -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#modification_of_phenanthrene_nucleus">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_process"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">modification of phenanthrene</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#modification_of_phenethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#modification_of_phenethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_process"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">modification of phenethyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#modification_of_piperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#modification_of_piperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_process"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">modification of piperidine</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#modification_on_iso_position -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#modification_on_iso_position">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_piperidine"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">modification on iso position</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#morphine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#morphine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_ChEBI_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#17303"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#5288826"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#decrease_in_ventilation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#euphoria"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#hyperalgesia"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#itching"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#miosis"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#nausea"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#somnolence"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenanthrene_nucleus"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#substrate_of"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3A4"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#mu_opioid_receptor -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#mu_opioid_receptor">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#protein_entity"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">mu opioid receptor</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#myoclonus -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#myoclonus">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#biological_effect"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">myoclonus</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#nausea -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#nausea">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#biological_effect"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">nausea</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#norbuprenorphine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#norbuprenorphine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#metabolite_of"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#buprenorphine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#norcodeine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#norcodeine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#metabolite_of"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#codeine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#norfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#norfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#metabolite_of"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#nucynta -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#nucynta">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#o-fluoroanilinophenyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#o-fluoroanilinophenyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#anilinophenyl_with_ortho_substitution"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fluorination_of_ortho_position_on_phenyl_ring"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fluorine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#o-fluorofentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#o-fluorofentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#o-isopropylanilinophenyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#o-isopropylanilinophenyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#anilinophenyl_with_ortho_substitution"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#substitution_with_isopropyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#isopropyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#o-methoxyanilinophenyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#o-methoxyanilinophenyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#anilinophenyl_with_ortho_substitution"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_methoxy_group_to_ortho_position_anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methoxy_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#o-methylanilinophenyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#o-methylanilinophenyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#anilinophenyl_with_ortho_substitution"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_methyl_group_at_ortho_position_on_anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#ocfentanil -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#ocfentanil">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#ocfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#ocfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#60575"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#A-3217"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_ethanamide_ether"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#o-fluoroanilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_trade_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#ocfentanil"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">I could find no experiences online, Erowid or otherwise.</rdfs:comment>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Wikipedia: https://en.wikipedia.org/wiki/Ocfentanil</rdfs:comment>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#ohmefentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#ohmefentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#62279"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3-methylfentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#beta-hydroxyphenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3-methylpiperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_trade_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#OMF"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_trade_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#β-hydroxy-3-methylfentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">I could find no experiences online, Erowid or otherwise.</rdfs:comment>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Wikipedia: https://en.wikipedia.org/wiki/Ohmefentanyl</rdfs:comment>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#onset_of_action -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#onset_of_action">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#pharmacokinetic_property"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">onset of action</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#orthofluorofentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#orthofluorofentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#101454647"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#o-fluoroanilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_trade_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#o-fluorofentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">I could find no experiences online, Erowid or otherwise.</rdfs:comment>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Wikipedia: https://en.wikipedia.org/wiki/Orthofluorofentanyl</rdfs:comment>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#oxidation_of_6-hydroxyl_on_phenanthrene_to_6-one -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#oxidation_of_6-hydroxyl_on_phenanthrene_to_6-one">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_C6"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">oxidation of C6 hydroxyl to ketone</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#oxotetrazole -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#oxotetrazole">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#oxycodone -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#oxycodone">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_ChEBI_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#7852"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#5284603"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methoxylation_of_C3_hydroxyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#oxidation_of_6-hydroxyl_on_phenanthrene_to_6-one"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#morphine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#C3-methoxy-C6-one-phenanthrene"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#p-chloroanilinophenyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#p-chloroanilinophenyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#anilinophenyl_with_para_substitution"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#chlorination_of_para_position_on_phenyl_ring"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#chlorine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#p-fluoroanilinophenyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#p-fluoroanilinophenyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#anilinophenyl_with_para_substitution"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fluorination_of_para_position_on_phenyl_ring"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fluorine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#p-hydroxyanilinophenyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#p-hydroxyanilinophenyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#anilinophenyl_with_para_substitution"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#hydroxylation_of_para_position_on_phenyl_ring"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#hydroxy_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#p-methoxy-anilino-phenyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#p-methoxy-anilino-phenyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#anilinophenyl_with_para_substitution"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methoxylation_of_para_position_on_phenyl_ring"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methoxy_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">p-methoxyanilinophenyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#para-fluorofuranylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#para-fluorofuranylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#furanylfentanyl"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#91825762"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_furanyl_at_beta_position"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fluorination_of_para_position_on_phenyl_ring"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#furanylfentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#furan-2-carboxamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#p-fluoroanilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">para-fluorofuranylfentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#parafluoroisobutyrylbenzylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#parafluoroisobutyrylbenzylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenylmethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#benzylfentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#isobutyramide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#p-fluoroanilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#pentanamide -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#pentanamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#propanamide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#increase_in_length_of_alkyl_chain_of_propanamide_from_three_carbons_to_five_carbons"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#pharmacokinetic_property -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#pharmacokinetic_property">
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">pharmacokinetic property</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#phenanthrene_nucleus -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#phenanthrene_nucleus">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">phenanthrene</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#phenaridine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#phenaridine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#phenethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#phenethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#hypertension"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#seizures"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#tachycardia"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#phenethyl_with_modification_to_alpha_and_beta_positions -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#phenethyl_with_modification_to_alpha_and_beta_positions">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">phenethyl with modification to alpha and beta positions</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#phenethyl_with_modification_to_alpha_position -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#phenethyl_with_modification_to_alpha_position">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">phenethyl with modification to alpha position</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#phenethyl_with_modification_to_alpha_position_and_phenyl_ring -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#phenethyl_with_modification_to_alpha_position_and_phenyl_ring">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">phenethyl with modification to alpha position and phenyl ring</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#phenethyl_with_modification_to_beta_position -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#phenethyl_with_modification_to_beta_position">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">phenethyl with modification to beta position</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#phenethyl_with_modification_to_beta_position_and_phenyl_ring -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#phenethyl_with_modification_to_beta_position_and_phenyl_ring">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">phenethyl with modification to beta position and phenyl ring</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#phenyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#phenyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#phenylacetic_acid -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#phenylacetic_acid">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_ChEBI_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#30745"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#999"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#metabolite_of"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">phenylacetic acid</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#phenylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#phenylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#phenylmethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#phenylmethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#ethyl_to_methyl_with_no_change_to_phenyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#phenylpiperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#phenylpiperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#maoi_inhibition"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#phenylpropyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#phenylpropyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#ethyl_to_propyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#physical_effect_of_drug_action -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#physical_effect_of_drug_action">
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">physical effect of drug action</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#pink -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#pink">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#pink_heroin -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#pink_heroin">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">pink heroin</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#piperazine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#piperazine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#piperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#piperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#decrease_in_ventilation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#euphoria"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#miosis"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#piperidine_with_ring_opened_at_2_position -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#piperidine_with_ring_opened_at_2_position">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#opening_of_ring_at_2&apos;_position"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">piperidine with ring opened at 2 position</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#potency -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#potency">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#pharmacokinetic_property"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#propanamide -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#propanamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#propanoate -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#propanoate">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#propanoyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#propanoyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#propenamide -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#propenamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#propanamide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#single_desaturation_of_alpha_chain_between_alpha&apos;_and_beta&apos;_carbon"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">propenamide</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#protein_entity -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#protein_entity">
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">protein entity</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#psicofentanil -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#psicofentanil">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#pyridin-4-ylethyl-norfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#pyridin-4-ylethyl-norfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#pyrrole -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#pyrrole">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Seems pushing it to say that a pyrrole is a type of aniline</rdfs:comment>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#pyrrole-fentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#pyrrole-fentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#124716"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#pyrrole"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#quinuclidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#quinuclidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#rapifen -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#rapifen">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#reddit -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#reddit">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#source_of_information"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#reduction_of_double_bond_between_C7_and_C8 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#reduction_of_double_bond_between_C7_and_C8">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_phenanthrene_nucleus"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">reduction of double bond between C7 and C8</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#remifentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#remifentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#60815"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanoate"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#4-methylformate-piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#replacement_of_anilinophenyl_with_pyrrole -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#replacement_of_anilinophenyl_with_pyrrole">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_anilinophenyl"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#pyrrole"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">substitution of phenyl part of anilinophenyl with pyrrole</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#replacement_of_ethyl_group_with_methyl_group -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#replacement_of_ethyl_group_with_methyl_group">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#decrease_in_length_of_alkyl_chain_of_propanamide"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">decrease in length of alkyl chain of propanamide from three carbons to two carbons</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#replacement_of_phenyl_group -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#replacement_of_phenyl_group">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_phenethyl"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#involves_process"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#aromatization"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">replacement of phenyl group</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#replacement_of_phenyl_group_with_4-ethyl-5-oxo-tetrazole -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#replacement_of_phenyl_group_with_4-ethyl-5-oxo-tetrazole">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#replacement_of_phenyl_group_with_substituted_oxatetrazole"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">replacement of phenyl group with 4-ethyl-5-oxo-tetrazole</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#replacement_of_phenyl_group_with_oxatetrazole -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#replacement_of_phenyl_group_with_oxatetrazole">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#replacement_of_phenyl_group"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">replacement of phenyl group with oxatetrazole</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#replacement_of_phenyl_group_with_substituted_oxatetrazole -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#replacement_of_phenyl_group_with_substituted_oxatetrazole">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#replacement_of_phenyl_group_with_oxatetrazole"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">replacement of phenyl group with substituted oxatetrazole</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#replacement_with_benzoyl_moiety -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#replacement_with_benzoyl_moiety">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#cyclization_of_aklyl_chain_at_alpha&apos;_position"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#benzyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">cyclization of alkyl chain of propanamide at alpha&apos; position to phenyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#route_of_administration -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#route_of_administration">
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">route of administration</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#secofentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#secofentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine_with_ring_opened_at_2_position"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#seizures -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#seizures">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#biological_effect"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">seizures</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#shortening_of_ethyl_chain -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#shortening_of_ethyl_chain">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#change_in_length_of_ethyl_chain"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">decrease in length of ethyl chain</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#solute_carrier_protein -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#solute_carrier_protein">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#protein_entity"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">solute carrier protein</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#somnolence -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#somnolence">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#biological_effect"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">somnolence</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#source_of_information -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#source_of_information">
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">source of information</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#subsitution_of_phenyl_with_indole -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#subsitution_of_phenyl_with_indole">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#replacement_of_phenyl_group"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#indole"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">replacement of phenyl group with indole</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#substance_name -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#substance_name">
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">substance name</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#substition_of_phenethyl_with_propanoyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#substition_of_phenethyl_with_propanoyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_phenethyl"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">replacement of phenethyl with propanoate</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#substituted_benzamide -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#substituted_benzamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#benzamide"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">substituted benzamide</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#substitution_of_anilinophenyl_with_diazine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#substitution_of_anilinophenyl_with_diazine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_anilinophenyl"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">substitution of phenyl part of anilinophenyl with diazine</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#substitution_of_anilinophenyl_with_pyrazine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#substitution_of_anilinophenyl_with_pyrazine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substitution_of_anilinophenyl_with_diazine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#pyrazine_(1,4-diazine)"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">substitution of anilinophenyl with pyrazine</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#substitution_of_phenyl_group_with_thenyl_group -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#substitution_of_phenyl_group_with_thenyl_group">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#replacement_of_phenyl_group"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#thenyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">replacement of phenyl group with thenyl group</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#substitution_of_phenyl_with_furanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#substitution_of_phenyl_with_furanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#replacement_of_phenyl_group"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#furanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">replacement of phenyl group with furanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#substitution_of_phenyl_with_thiophene -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#substitution_of_phenyl_with_thiophene">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#replacement_of_phenyl_group"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#thiophene"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">replacement of phenyl group with thiophene</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#substitution_with_isopropyl_group -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#substitution_with_isopropyl_group">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_ortho_position_on_phenyl_ring"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#isopropyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of isopropyl group to ortho position on phenyl ring of anilinophenyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#sufentanil -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#sufentanil">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_ChEBI_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#9316"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#41693"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#thenylethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#4-dimethylether-piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#tachycardia -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#tachycardia">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#biological_effect"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">tachycardia</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#tapentadol -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#tapentadol">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_ChEBI_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#135935"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_ChEBI_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#9838022"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#nucynta"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#4&apos;-hydroxyphenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#substrate_of"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#2C9"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">passing over this for now. On 8/15 I am unsure how to classify this. It&apos;s somewhere in between the phenethyl part of fentanyl and a phenethylamine.</rdfs:comment>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#tetrahydrofuran -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#tetrahydrofuran">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#tetrahydrofuran_carboxamide -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#tetrahydrofuran_carboxamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#propanamide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#cyclization_of_alkyl_chain_on_propanamide_at_alph&apos;_position_to_tetrahydrofuranyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#tetrahydrofuran"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">tetrahydrofuran carboxamide</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#tetrahydrofuranylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#tetrahydrofuranylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#furanylfentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#tetrahydrofuran_carboxamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#tetramethylcyclopropane -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#tetramethylcyclopropane">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#tetramethylcyclopropane_carboxamide -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#tetramethylcyclopropane_carboxamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#cyclopropane_carboxamide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_tetramethylcyclopropyl_group_at_beta&apos;_position_of_carboxamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#tetramethylcyclopropane"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">tetramethylcyclopropane carboxamide</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#tetramethylcyclopropylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#tetramethylcyclopropylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#tetramethylcyclopropane_carboxamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#thenyl_group -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#thenyl_group">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">thenyl group</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#thenylethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#thenylethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#thiophene"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#substitution_of_phenyl_group_with_thenyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#thenylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#thenylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#21595404"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#thenylmethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">There is no information on Wikipedia or Erowid about this substance.</rdfs:comment>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#thenylmethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#thenylmethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#thiophene"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#ethyl_to_methyl_with_no_change_to_phenyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#substitution_of_phenyl_group_with_thenyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#thiafentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#thiafentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#13653617"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_ethanamide_ether"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#thenylethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#4-methylformate-piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#thiofentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#thiofentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_ChEBI_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#61099"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#62380"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#substitution_of_phenyl_with_thiophene"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#thenylethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#thiophene -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#thiophene">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#tramadol -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#tramadol">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#trans-phenylcyclopropyl-norfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#trans-phenylcyclopropyl-norfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#trefentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#trefentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#o-fluoroanilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#1,4-diethyl-5-oxo-tetrazole"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#4-phenylpiperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#trifluorofentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#trifluorofentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#4&apos;-fluoropenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#m,p-difluoroanilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#unknown_knowledge -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#unknown_knowledge">
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">unknown knowledge</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#valerylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#valerylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#21595398"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#pentanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#wildnil -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#wildnil">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#α-methyl-β-hydroxyfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#α-methyl-β-hydroxyfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#alpha-methyl-beta-hydroxy-phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">α-methyl-β-hydroxyfentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#α-methylacetylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#α-methylacetylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#62307"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#acetylfentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#acetamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#alpha-methylphenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">α-methylacetylfentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#α-methylbutyrfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#α-methylbutyrfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#527016"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#butyrfentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#alpha-methylphenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#butanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">α-methylbutyrfentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#α-methylthiofentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#α-methylthiofentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#62309"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#thiofentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#alpha-methyl-thiophenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">α-methylthiofentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#β-hydroxy-3-methylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#β-hydroxy-3-methylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#β-hydroxy-4-methylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#β-hydroxy-4-methylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#beta-hydroxyphenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#4-methylpiperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">There are no Wikipedia or Erowid articles on this chemical.</rdfs:comment>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">β-hydroxy-4-methylfentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#β-hydroxyfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#β-hydroxyfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#62278"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#beta-hydroxyphenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">https://en.wikipedia.org/wiki/Betahydroxyfentanyl</rdfs:comment>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">β-hydroxyfentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#β-hydroxythiofentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#β-hydroxythiofentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#117072582"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#beta-hydroxythiophenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">https://en.wikipedia.org/wiki/Betahydroxyfentanyl</rdfs:comment>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#β-methylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#β-methylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#6425761"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#beta-methylphenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">β-methylfentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#0.02_times_fentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#0.02_times_fentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#potency"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">0.02 times fentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#0.2_time_fentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#0.2_time_fentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#potency"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">0.2 times fentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#1,3-benzodioxole -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#1,3-benzodioxole">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#1,3-benzodioxole_carboxamide -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#1,3-benzodioxole_carboxamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#propanamide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_benzodioxole_at_beta&apos;_position"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#1,3-benzodioxole"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">1,3-benzodioxole carboxamide</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#1,4-diethyl-5-oxo-tetrazole -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#1,4-diethyl-5-oxo-tetrazole">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#oxotetrazole"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#1-methyl-4-ethyl-oxatetrazole -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#1-methyl-4-ethyl-oxatetrazole">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#replacement_of_phenyl_group_with_oxatetrazole"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">1-methyl-4-ethyl-oxatetrazole</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#10-15_times_morhpine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#10-15_times_morhpine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#potency"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">10-15 times morhpine</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#10-5_times_fentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#10-5_times_fentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#potency"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">10-15 times fentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#100974915 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#100974915">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#101454647 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#101454647">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#10314851 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#10314851">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#10319503 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#10319503">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#115159 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#115159">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#117072582 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#117072582">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#118796493 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#118796493">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#119915 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#119915">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#ChEBI_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#123642 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#123642">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#124716 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#124716">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#126682248 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#126682248">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#129597846 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#129597846">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#133866 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#133866">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">https://pubchem.ncbi.nlm.nih.gov/compound/133866</rdfs:comment>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#135276 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#135276">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#ChEBI_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#13544015 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#13544015">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#135453 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#135453">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#ChEBI_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#135935 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#135935">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#ChEBI_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#13653606 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#13653606">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#13653617 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#13653617">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#139025450 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#139025450">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#162056 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#162056">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#16714 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#16714">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#ChEBI_ID"/>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">codeine</rdfs:comment>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#17303 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#17303">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#ChEBI_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#187760 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#187760">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#2C9 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#2C9">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#CYP_enzyme"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#2D6 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#2D6">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#CYP_enzyme"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#2&apos;-fluorophenethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#2&apos;-fluorophenethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#phenethyl_with_modification_to_2&apos;_position"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#halogenation_of_phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fluorine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#2&apos;-fluorophenyl-beta&apos;-fluoroethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#2&apos;-fluorophenyl-beta&apos;-fluoroethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#phenethyl_with_modification_to_2&apos;_position"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#halogenation_of_phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fluorination_of_beta&apos;_position_on_ethyl_chain_of_phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:minQualifiedCardinality rdf:datatype="http://www.w3.org/2001/XMLSchema#nonNegativeInteger">2</owl:minQualifiedCardinality>
                <owl:onClass rdf:resource="https://mac389.github.io/ontology#fluorine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#2,2&apos;-difluorofentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#2,2&apos;-difluorofentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#2&apos;-fluorophenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#2-fluoropiperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Related Article: https://onlinelibrary.wiley.com/doi/full/10.1002/dta.2264?casa_token=WvoREBzqMusAAAAA%3Awdv4sHDYlTg_70CSHmfBfOw1IQYsmK1wlqVdU_q8JcHn4EZ8iIrd0NsXRV6Ot2qVn41Ca4v85sOOCtI</rdfs:comment>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Wikipedia: https://en.wikipedia.org/wiki/2,2%27-Difluorofentanyl</rdfs:comment>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">2,2&apos;-difluorofentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#2,5-dimethylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#2,5-dimethylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#162056"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#2,5-dimethylpiperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_trade_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenaridine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">I could not find any Erowid entries on this, or any other direct user experiences.</rdfs:comment>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Wikipedia: https://en.wikipedia.org/wiki/Phenaridine</rdfs:comment>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">2,5-dimethylfentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#2,5-dimethylpiperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#2,5-dimethylpiperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methylation_on_2_position_on_piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyldation_of_5_position_on_piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:minQualifiedCardinality rdf:datatype="http://www.w3.org/2001/XMLSchema#nonNegativeInteger">2</owl:minQualifiedCardinality>
                <owl:onClass rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#2-fluoro-5-methylpiperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#2-fluoro-5-methylpiperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fluorination_of_2_position_on_piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyldation_of_5_position_on_piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fluorine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">2-fluoro-5-methylpiperidine</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#2-fluoropiperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#2-fluoropiperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fluorination_of_2_position_on_piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fluorine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#2-ethylidene-1,5-dimethyl-3,3-diphenylpyrrolidine_(EDDP) -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#2-ethylidene-1,5-dimethyl-3,3-diphenylpyrrolidine_(EDDP)">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_ChEBI_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#80645"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#115159"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#metabolite_of"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methadone"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">2-ethylidene-1,5-dimethyl-3,3-diphenylpyrrolidine (EDDP)</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#21595398 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#21595398">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#21595404 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#21595404">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#23349712 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#23349712">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#252141 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#252141">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#2569 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#2569">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#ChEBI_ID"/>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">alfentanil</rdfs:comment>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#27808 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#27808">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#ChEBI_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#3A4 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#3A4">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#CYP_enzyme"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#3FUF -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#3FUF">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#3MFUF -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#3MFUF">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#3,4-dichloro-4&apos;&apos;-methoxyfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#3,4-dichloro-4&apos;&apos;-methoxyfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#4&apos;-methoxyphenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#m,p-dichloroanilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">No information on Wikipedia or Erowid</rdfs:comment>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">3,4-dichloro-4&apos;-methoxyfentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#3-MF -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#3-MF">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#3-allylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#3-allylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#133866"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3-allylpiperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">PubChem: https://pubchem.ncbi.nlm.nih.gov/compound/133866</rdfs:comment>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Wikipedia: https://en.wikipedia.org/wiki/3-Allylfentanyl</rdfs:comment>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">3-allylfentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#3-allylpiperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#3-allylpiperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_allyl_group_on_position_3_of_piperidine_ring"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#allyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#3-ethyl-2-oxotetrazole -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#3-ethyl-2-oxotetrazole">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#oxotetrazole"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#3-fluoropiperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#3-fluoropiperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fluorination_of_3_position_on_piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fluorine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#3-furanylfentanyl_is_0.2_tims_as_potent_as_fentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#3-furanylfentanyl_is_0.2_tims_as_potent_as_fentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#0.2_time_fentanyl"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">3-furanylfentanyl is 0.2 times as potent as fentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#3-methyl-4-methylethanoate-piperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#3-methyl-4-methylethanoate-piperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_methylethanoate_at_4&apos;_position_on_piperidine_ring"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methylethanoate"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#3-methylbutyrfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#3-methylbutyrfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#86130531"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#butanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3-methylpiperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Wikipedia: https://en.wikipedia.org/wiki/3-Methylbutyrfentanyl</rdfs:comment>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">3-methylbutyrfentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#3-methylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#3-methylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_ChEBI_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#61092"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#61996"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3-MF"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3-methylpiperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_potency"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3-methylfentanyl_is_10-15_times_stronger_than_fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_potency"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#400-600_times_morphine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#metabolized_by"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#2D6"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#metabolized_by"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3A4"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Wikipedia: https://en.wikipedia.org/wiki/3-Methylfentanyl</rdfs:comment>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">3-methylfentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#3-methylfentanyl_is_10-15_times_stronger_than_fentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#3-methylfentanyl_is_10-15_times_stronger_than_fentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#10-5_times_fentanyl"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">3-methylfentanyl is 10-15 times stronger than fentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#3-methylnorfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#3-methylnorfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#metabolite_of"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3-methylfentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">https://link.springer.com/article/10.1208/s12248-017-0070-z</rdfs:comment>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#3-methylpiperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#3-methylpiperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methylation_of_3&apos;_position_on_piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#3-methylthiofentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#3-methylthiofentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_ChEBI_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#53763"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#62296"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3-methylfentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#thenylethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3-methylpiperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Wikipedia: https://en.wikipedia.org/wiki/3-Methylthiofentanyl</rdfs:comment>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">3-methylthiofentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#3-phenylpropanoylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#3-phenylpropanoylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#beta&apos;-phenylpropanoylcarboxamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Wikipedia: https://en.wikipedia.org/wiki/3-Phenylpropanoylfentanyl</rdfs:comment>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">3-phenylpropanoylfentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#3-fluorofentanyl_(NFEPP) -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#3-fluorofentanyl_(NFEPP)">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#621487"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#NFEPP"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3-fluoropiperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#substrate_of"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#2D6"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#substrate_of"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3A4"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Is designed to target only inflamed tissue. The creators argue that halogenation increases the selectivity for inflamed tissue. 

Halford B (2017). &quot;An opioid minus major side effects&quot;. Chemical &amp; Engineering News. 95 (10): 8.</rdfs:comment>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">PubChem: https://pubchem.ncbi.nlm.nih.gov/compound/621847</rdfs:comment>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Wikipedia: https://en.wikipedia.org/wiki/NFEPP</rdfs:comment>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">3-fluorofentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#3-furanylfentanyl_(3FUF) -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#3-furanylfentanyl_(3FUF)">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3FUF"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#furan-2-carboxamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_potency"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3-furanylfentanyl_is_0.2_tims_as_potent_as_fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#substrate_of"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#2D6"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#substrate_of"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3A4"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">I could find no experiences online, Erowide or otherwise.</rdfs:comment>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Wikipedia: https://en.wikipedia.org/wiki/Furanylfentanyl</rdfs:comment>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">3-furanylfentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#3-methylfuranylfentanyl(3MFUF,_TMFUF) -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#3-methylfuranylfentanyl(3MFUF,_TMFUF)">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#furanylfentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3-methylfentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#TMFUF"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3MFUF"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#furan-2-carboxamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#3-methylpiperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Nothing on Wikipedia, Erowid, or Psychonaut</rdfs:comment>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">3-methylfuranylfentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#30745 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#30745">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#ChEBI_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#3216 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#3216">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#ChEBI_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#3345 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#3345">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#4&apos;-fluoropenethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#4&apos;-fluoropenethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#phenethyl_with_modification_to_4&apos;_position"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fluorination_of_4&apos;_position_on_phenyl_ring_of_phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:minQualifiedCardinality rdf:datatype="http://www.w3.org/2001/XMLSchema#nonNegativeInteger">2</owl:minQualifiedCardinality>
                <owl:onClass rdf:resource="https://mac389.github.io/ontology#fluorine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#4&apos;-hydroxyphenyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#4&apos;-hydroxyphenyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#phenethyl_with_modification_to_4&apos;_position"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#hydroxylation_of_4&apos;_position_on_phenyl_ring_of_phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#hydroxy_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#4&apos;-methoxyphenethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#4&apos;-methoxyphenethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#phenethyl_with_modification_to_4&apos;_position"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methoxylation_of_4&apos;_position_on_phenyl_ring_of_phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methoxy_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#4&apos;-methylphenethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#4&apos;-methylphenethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#phenethyl_with_modification_to_4&apos;_position"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methylation_of_4&apos;_position_on_phenyl_ring_of_phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#4,5-epoxymorphinan_ring -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#4,5-epoxymorphinan_ring">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">4,5-epoxymorphinan ring</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#4-CIBF -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#4-CIBF">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#4-FBF -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#4-FBF">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#4-FIBF -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#4-FIBF">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substance_name"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#4-dimethylether-piperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#4-dimethylether-piperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_dimethyl_ether_at_4_position_on_piperdine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:minQualifiedCardinality rdf:datatype="http://www.w3.org/2001/XMLSchema#nonNegativeInteger">2</owl:minQualifiedCardinality>
                <owl:onClass rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#4-fluorofentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#4-fluorofentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_ChEBI_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#61074"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#62300"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#p-fluoroanilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">4-fluorofentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#4-methoxybutyrfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#4-methoxybutyrfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#118796493"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#butanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#p-methoxy-anilino-phenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Wikipedia: https://en.wikipedia.org/wiki/4-Methoxybutyrfentanyl</rdfs:comment>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">4-methoxybutyrfentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#4-methylformate-piperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#4-methylformate-piperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_dimethyl_ester_at_4_position_on_piperdine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methylformate"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#4-methylphenethylacetylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#4-methylphenethylacetylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#91736720"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#4&apos;-methylphenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Wikipedia: https://en.wikipedia.org/wiki/4-Methylphenethylacetylfentanyl</rdfs:comment>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">4-methylphenethylacetylfentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#4-methylpiperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#4-methylpiperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_methyl_group_at_4&apos;_position_on_piperidine_ring"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#methyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#4-phenylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#4-phenylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#10319503"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#4-phenylpiperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Wikipedia: https://en.wikipedia.org/wiki/4-Phenylfentanyl</rdfs:comment>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">4-phenylfentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#4-phenylpiperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#4-phenylpiperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_phenyl_group_at_4_position_on_piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#4-(quinuclidin-3-yl)-piperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#4-(quinuclidin-3-yl)-piperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_quinuclidin-3-yl_at_4_position_on_piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#quinuclidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#4-chloroisobutyrylfentanyl_(4-CIBF) -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#4-chloroisobutyrylfentanyl_(4-CIBF)">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#100974915"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#4-CIBF"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#isobutyramide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#p-chloroanilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Wikipedia: https://en.wikipedia.org/wiki/4-Chloroisobutyrylfentanyl</rdfs:comment>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">4-chloroisobutyrylfentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#4-fluorobutyrfentanyl_(4-FBF) -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#4-fluorobutyrfentanyl_(4-FBF)">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#86280430"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#4-fluorofentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#4-FBF"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#butanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#p-fluoroanilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Wikipedia: https://en.wikipedia.org/wiki/4-Fluorobutyrfentanyl</rdfs:comment>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">4-fluorobutyrfentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#4-fluoroisobutyrfentanyl_(4-FIBF) -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#4-fluoroisobutyrfentanyl_(4-FIBF)">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#4-fluorofentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#4-FIBF"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#isobutyramide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#p-fluoroanilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Wikipedia: https://en.wikipedia.org/wiki/4-Fluoroisobutyrfentanyl</rdfs:comment>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">4-fluoroisobutyrfentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#400-600_times_morphine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#400-600_times_morphine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#potency"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">400-600 times morphine</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#4095 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#4095">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#41693 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#41693">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#431865 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#431865">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#51263 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#51263">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#527015 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#527015">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#527016 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#527016">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#5284371 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#5284371">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#5284543 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#5284543">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#5284570 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#5284570">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#5284603 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#5284603">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#5288826 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#5288826">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#53763 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#53763">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#ChEBI_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#5462328 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#5462328">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#5463874 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#5463874">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#5790 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#5790">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#ChEBI_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#60575 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#60575">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#60815 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#60815">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#61074 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#61074">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#ChEBI_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#61084 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#61084">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#ChEBI_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#61092 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#61092">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#ChEBI_ID"/>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">https://www.ebi.ac.uk/chebi/searchId.do?chebiId=61092</rdfs:comment>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">identified for 3-methylfentanyl</rdfs:comment>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#61095 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#61095">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#ChEBI_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#61099 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#61099">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#ChEBI_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#618626 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#618626">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#61996 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#61996">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#621174 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#621174">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#621487 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#621487">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#62156 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#62156">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#62278 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#62278">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#62279 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#62279">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#62281 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#62281">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#62296 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#62296">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#62300 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#62300">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#62307 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#62307">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#62309 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#62309">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#62380 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#62380">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#6425761 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#6425761">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#644073 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#644073">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#6807 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#6807">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#ChEBI_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#7852 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#7852">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#ChEBI_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#80645 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#80645">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#ChEBI_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#86130531 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#86130531">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#86280430 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#86280430">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#91736720 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#91736720">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#91825762 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#91825762">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#9316 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#9316">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#ChEBI_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#968688 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#968688">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#9838022 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#9838022">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#999 -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#999">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#PubChem_ID"/>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#addition_of_benzodioxole_at_beta&apos;_position -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#addition_of_benzodioxole_at_beta&apos;_position">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#cyclization_of_aklyl_chain_at_alpha&apos;_position"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#benzodioxole"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">cyclization of alkyl chain of propanamide at alpha&apos; position to benzodioxole</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#addition_of_butyl_group_at_beta&apos;_position -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#addition_of_butyl_group_at_beta&apos;_position">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#increase_in_length_of_alkyl_chain_of_propanamide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#butyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">increase in length of alkyl chain of propanamide from three carbons to four carbons</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#addition_of_cyclopentyl_group_at_beta&apos;_position -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#addition_of_cyclopentyl_group_at_beta&apos;_position">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#cyclization_of_aklyl_chain_at_alpha&apos;_position"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#cyclopentyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">cyclization of alkyl chain of propanamide at alpha&apos; position to cyclopentyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#addition_of_cyclopropyl_group_at_beta&apos;_position -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#addition_of_cyclopropyl_group_at_beta&apos;_position">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#cyclization_of_aklyl_chain_at_alpha&apos;_position"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#cyclopropyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">cyclization of alkyl chain of propanamide at alpha&apos; position to cyclopropyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#addition_of_methyl_group_at_4&apos;_position_on_piperidine_ring -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#addition_of_methyl_group_at_4&apos;_position_on_piperidine_ring">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_4_position_on_piperidine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#involves_process"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#alkylation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of methyl group at 4 position on piperidine ring</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#addition_of_methylethanoate_at_4&apos;_position_on_piperidine_ring -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#addition_of_methylethanoate_at_4&apos;_position_on_piperidine_ring">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#addition_of_ester_on_position_3_of_piperidine_ring"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">addition of methylethanoate at 4 position on piperidine ring</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#addition_of_tetramethylcyclopropyl_group_at_beta&apos;_position_of_carboxamide -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#addition_of_tetramethylcyclopropyl_group_at_beta&apos;_position_of_carboxamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#cyclization_of_aklyl_chain_at_alpha&apos;_position"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#tetramethylcyclopropane"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">cyclization of alkyl chain of propanamide at alpha&apos; position to tetramethylcyclopropyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#beta&apos;-phenylpropanoylcarboxamide -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#beta&apos;-phenylpropanoylcarboxamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#propanamide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_phenylpropanoyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">phenylpropanamide</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#beta-hydroxylation_of_2&apos;-phenethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#beta-hydroxylation_of_2&apos;-phenethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#beta-hydroxylation"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">beta-hydroxylation of 2-phenethyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#cyclization_of_aklyl_chain_at_alpha&apos;_position -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#cyclization_of_aklyl_chain_at_alpha&apos;_position">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#cyclization_of_alkyl_chain"/>
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_at_alpha_position"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">cyclization of alkyl chain of propanamide at alpha&apos; position</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#cyclization_of_alkyl_chain_on_propanamide_at_alph&apos;_position_to_tetrahydrofuranyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#cyclization_of_alkyl_chain_on_propanamide_at_alph&apos;_position_to_tetrahydrofuranyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#cyclization_of_aklyl_chain_at_alpha&apos;_position"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#tetrahydrofuran"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">cyclization of alkyl chain on propanamide at alpha&apos; position to tetrahydrofuranyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#fluorination_of_4&apos;_position_on_phenyl_ring_of_phenethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#fluorination_of_4&apos;_position_on_phenyl_ring_of_phenethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#halogenation_of_4&apos;_position_on_phenyl_ring"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fluorine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">fluorination of 4&apos; position on phenyl ring of phenethyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#fluorination_of_beta&apos;_position_on_ethyl_chain_of_phenethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#fluorination_of_beta&apos;_position_on_ethyl_chain_of_phenethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#halogenation_of_beta&apos;_position_on_phenyl_ring_of_phenthyl"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">fluorination of beta&apos; position on ethyl chain of phenthyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#halogenation_of_2&apos;_position_on_phenyl_ring_of_phenethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#halogenation_of_2&apos;_position_on_phenyl_ring_of_phenethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_2&apos;_position_on_phenyl_ring_of_phenethyl"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#involves_process"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#halogenation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">halogenation of 2&apos; position on phenyl ring of phenethyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#halogenation_of_4&apos;_position_on_phenyl_ring -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#halogenation_of_4&apos;_position_on_phenyl_ring">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_4&apos;_position_on_phenyl_ring_of_phenethyl"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#involves_process"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#halogenation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">halogenation of 4&apos; position on phenyl ring of phenethyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#halogenation_of_beta&apos;_position_on_phenyl_ring_of_phenthyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#halogenation_of_beta&apos;_position_on_phenyl_ring_of_phenthyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_beta&apos;_position_on_ethyl_chain"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#involves_process"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#halogenation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">halogenation of beta position on ethyl chain of phenthyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#hydroxylation_of_4&apos;_position_on_phenyl_ring_of_phenethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#hydroxylation_of_4&apos;_position_on_phenyl_ring_of_phenethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_4&apos;_position_on_phenyl_ring_of_phenethyl"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#involves_process"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#hydroxylation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">hydroxylation of 4&apos; position on phenyl ring of phenethyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#hydroxylation_of_beta&apos;_position_on_ethyl_chain -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#hydroxylation_of_beta&apos;_position_on_ethyl_chain">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_beta&apos;_position_on_ethyl_chain"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#involves_process"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#hydroxylation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">hydroxylation of beta position on ethyl chain</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#increase_in_length_of_alkyl_chain_of_propanamide_from_three_carbons_to_four_carbons_and_desaturation_of_carbon_bond_between_alpha&apos;_and_beta&apos;_carbons -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#increase_in_length_of_alkyl_chain_of_propanamide_from_three_carbons_to_four_carbons_and_desaturation_of_carbon_bond_between_alpha&apos;_and_beta&apos;_carbons">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#increase_in_length_of_alkyl_chain_of_propanamide_from_three_carbons_to_four_carbons_and_desaturation_of_carbon_bonds"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">increase in length of alkyl chain of propanamide from three carbons to four carbons and desaturation of carbon bond between alpha&apos; and beta&apos; carbons</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#m,p-dichloroanilinophenyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#m,p-dichloroanilinophenyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#anilinophenyl_with_meta_and_para_substitutions"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_chlorine_to_meta_and_para_positions_on_phenyl_of_anilino_phenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:minQualifiedCardinality rdf:datatype="http://www.w3.org/2001/XMLSchema#nonNegativeInteger">2</owl:minQualifiedCardinality>
                <owl:onClass rdf:resource="https://mac389.github.io/ontology#chlorine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">m,p-dichloroanilinophenyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#m,p-dichlorobenzamide -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#m,p-dichlorobenzamide">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#substituted_benzamide"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:minQualifiedCardinality rdf:datatype="http://www.w3.org/2001/XMLSchema#nonNegativeInteger">2</owl:minQualifiedCardinality>
                <owl:onClass rdf:resource="https://mac389.github.io/ontology#chlorine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">NEEDS FURTHER ANNOTATION OF HALOGENATION</rdfs:comment>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Need to annotate m,p substitution. Seems a bit odd, although possibly intelligent, that this is lumped under propanamide.</rdfs:comment>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#m,p-difluoroanilinophenyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#m,p-difluoroanilinophenyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#anilinophenyl_with_meta_and_para_substitutions"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_fluorine_to_meta_and_para_positions_on_phenyl_ring_of_anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:minQualifiedCardinality rdf:datatype="http://www.w3.org/2001/XMLSchema#nonNegativeInteger">2</owl:minQualifiedCardinality>
                <owl:onClass rdf:resource="https://mac389.github.io/ontology#fluorine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">m,p-difluoroanilinophenyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#methoxylation_of_4&apos;_position_on_phenyl_ring_of_phenethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#methoxylation_of_4&apos;_position_on_phenyl_ring_of_phenethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_4&apos;_position_on_phenyl_ring_of_phenethyl"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#involves_process"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#alkoxylation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">methoxylation of 4&apos; position on phenyl ring of phenethyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#methylation_of_3&apos;_position_on_piperidine -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#methylation_of_3&apos;_position_on_piperidine">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#alkylation_of_3_position_on_piperdine"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_biological_effect"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#glorb"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">methylation of 3 position on piperidine</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#methylation_of_4&apos;_position_on_phenyl_ring_of_phenethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#methylation_of_4&apos;_position_on_phenyl_ring_of_phenethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_4&apos;_position_on_phenyl_ring_of_phenethyl"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#involves_process"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#alkylation"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">methylation of 4&apos; position on phenyl ring of phenethyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#modification_of_2&apos;_position_on_phenyl_ring_of_phenethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#modification_of_2&apos;_position_on_phenyl_ring_of_phenethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_phenethyl"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">modification of 2&apos; position on phenyl ring of phenethyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#modification_of_4&apos;_position_on_phenyl_ring_of_phenethyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#modification_of_4&apos;_position_on_phenyl_ring_of_phenethyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_phenethyl"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">modification of 4&apos; position on phenyl ring of phenethyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#modification_of_alpha&apos;_position_on_ethyl_chain -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#modification_of_alpha&apos;_position_on_ethyl_chain">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modfication_of_ethyl_chain"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">modification of alpha position on ethyl chain</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#modification_of_beta&apos;_position_on_ethyl_chain -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#modification_of_beta&apos;_position_on_ethyl_chain">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modfication_of_ethyl_chain"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">modification of beta position on ethyl chain</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#opening_of_ring_at_2&apos;_position -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#opening_of_ring_at_2&apos;_position">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#modification_of_piperidine"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">opening of ring at 2 position</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#ortho-isopropylfuranylfentanyl_(o-iPr-Fu-F) -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#ortho-isopropylfuranylfentanyl_(o-iPr-Fu-F)">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#furanylfentanyl"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_furanyl_at_beta_position"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#substitution_with_isopropyl_group"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#furanylfentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#furan-2-carboxamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#o-isopropylanilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">ortho-isopropylfuranylfentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#ortho-methoxyfuranylfentanyl_(o-MeO-Fu-F) -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#ortho-methoxyfuranylfentanyl_(o-MeO-Fu-F)">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#furanylfentanyl"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_furanyl_at_beta_position"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_methoxy_group_to_ortho_position_anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#furan-2-carboxamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#o-methoxyanilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">ortho-methoxyfuranylfentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#ortho-methylfuranylfentanyl_(o-Me-Fu-F) -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#ortho-methylfuranylfentanyl_(o-Me-Fu-F)">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#furanylfentanyl"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_furanyl_at_beta_position"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_methyl_group_at_ortho_position_on_anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#furan-2-carboxamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#o-methylanilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">ortho-methylfuranylfentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#para-chlorofuranylfentanyl_(p-Cl-Fu-F) -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#para-chlorofuranylfentanyl_(p-Cl-Fu-F)">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#furanylfentanyl"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#addition_of_furanyl_at_beta_position"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_chemical_modification"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#chlorination_of_para_position_on_phenyl_ring"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#furanylfentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#furan-2-carboxamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#p-chloroanilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">para-chlorofuranylfentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#para-hydroxy‐butyrylfentanyl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#para-hydroxy‐butyrylfentanyl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#butyrfentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#butanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#p-hydroxyanilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">para-hydroxy‐butyrylfentanyl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#phenethyl_with_modification_to_2&apos;_position -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#phenethyl_with_modification_to_2&apos;_position">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">phenethyl with modification to 2&apos; position</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#phenethyl_with_modification_to_4&apos;_position -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#phenethyl_with_modification_to_4&apos;_position">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#phenethyl"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">phenethyl with modification to 4&apos; position</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#pyrazine_(1,4-diazine) -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#pyrazine_(1,4-diazine)">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#diazine"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">pyrazine (1,4-diazine)</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#pyrimidine_(1,3-diazine) -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#pyrimidine_(1,3-diazine)">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#diazine"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">pyrimidine (1,3-diazine)</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#single_desaturation_of_alpha_chain_between_alpha&apos;_and_beta&apos;_carbon -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#single_desaturation_of_alpha_chain_between_alpha&apos;_and_beta&apos;_carbon">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#desaturation_of_alkyl_chain"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">single desaturation of alkyl chain between alpha&apos; and beta&apos; carbons</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#substitution_of_phenyl_with_5-oxo-4,5-dihydro-1H-tetrazol-1-yl -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#substitution_of_phenyl_with_5-oxo-4,5-dihydro-1H-tetrazol-1-yl">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#replacement_of_phenyl_group"/>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">replacement of phenyl group with 5-oxo-4,5-dihydro-1H-tetrazol-1-yl</rdfs:label>
    </owl:Class>
    


    <!-- https://mac389.github.io/ontology#α-methylfentanyl_(AMF) -->

    <owl:Class rdf:about="https://mac389.github.io/ontology#α-methylfentanyl_(AMF)">
        <rdfs:subClassOf rdf:resource="https://mac389.github.io/ontology#chemical_entity"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_ChEBI_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#61092"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_PubChem_ID"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#62281"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_functional_parent"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#fentanyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_name"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#AMF"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#alpha-methylphenethyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#anilinophenyl"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#piperidine"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="https://mac389.github.io/ontology#has_part"/>
                <owl:someValuesFrom rdf:resource="https://mac389.github.io/ontology#propanamide"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">α-methylfentanyl</rdfs:label>
    </owl:Class>
    


    <!-- 
    ///////////////////////////////////////////////////////////////////////////////////////
    //
    // Individuals
    //
    ///////////////////////////////////////////////////////////////////////////////////////
     -->

    


    <!-- https://mac389.github.io/ontology#400-600_time_morphine -->

    <owl:NamedIndividual rdf:about="https://mac389.github.io/ontology#400-600_time_morphine">
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">400-600 times morphine</rdfs:label>
    </owl:NamedIndividual>
</rdf:RDF>



<!-- Generated by the OWL API (version 4.5.9.2019-02-01T07:24:44Z) https://github.com/owlcs/owlapi -->


<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Composition
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Composition</sch:title>
    <sch:rule context="f:Composition">
      <sch:assert test="count(f:contained) &lt;= 0">contained: maximum cardinality of 'contained' is 0</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/reportofilltraveler/StructureDefinition/transfer-date']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/reportofilltraveler/StructureDefinition/transfer-date': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/reportofilltraveler/StructureDefinition/qstation-name']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/reportofilltraveler/StructureDefinition/qstation-name': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:encounter) &lt;= 0">encounter: maximum cardinality of 'encounter' is 0</sch:assert>
      <sch:assert test="count(f:confidentiality) &lt;= 0">confidentiality: maximum cardinality of 'confidentiality' is 0</sch:assert>
      <sch:assert test="count(f:attester) &lt;= 0">attester: maximum cardinality of 'attester' is 0</sch:assert>
      <sch:assert test="count(f:relatesTo) &lt;= 1">relatesTo: maximum cardinality of 'relatesTo' is 1</sch:assert>
      <sch:assert test="count(f:event) &lt;= 1">event: maximum cardinality of 'event' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>

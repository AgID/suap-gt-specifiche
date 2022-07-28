<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="#all"
                version="3.0">
   <!-- the tested stylesheet -->
   <xsl:import href="file:/F:/softwareDEV/GIT/repos/suap-gt-specifiche/to_moduli/moduli_fvg/02_entita/test_cases/xspec/ent_indirizzo_italiano_v1.0.0.tc-sch-preprocessed.xsl"/>
   <!-- XSpec library modules providing tools -->
   <xsl:include href="file:/F:/Program%20Files/Oxygen%20XML%20Editor%2024/frameworks/xspec/src/common/runtime-utils.xsl"/>
   <xsl:include href="file:/F:/Program%20Files/Oxygen%20XML%20Editor%2024/frameworks/xspec/src/schematron/select-node.xsl"/>
   <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}stylesheet-uri"
                 as="Q{http://www.w3.org/2001/XMLSchema}anyURI">file:/F:/softwareDEV/GIT/repos/suap-gt-specifiche/to_moduli/moduli_fvg/02_entita/test_cases/xspec/ent_indirizzo_italiano_v1.0.0.tc-sch-preprocessed.xsl</xsl:variable>
   <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}xspec-uri"
                 as="Q{http://www.w3.org/2001/XMLSchema}anyURI">file:/F:/softwareDEV/GIT/repos/suap-gt-specifiche/to_moduli/moduli_fvg/02_entita/test_cases/ent_indirizzo_italiano_v1.0.0.tc.xspec</xsl:variable>
   <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}is-external"
                 as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                 select="false()"/>
   <xsl:variable xmlns:xs="http://www.w3.org/2001/XMLSchema"
                 name="Q{urn:x-xspec:compile:impl}thread-aware"
                 as="xs:boolean"
                 select="(system-property('Q{http://www.w3.org/1999/XSL/Transform}product-name') eq 'SAXON') and starts-with(system-property('Q{http://www.w3.org/1999/XSL/Transform}product-version'), 'EE ')"
                 static="yes"/>
   <xsl:variable name="Q{urn:x-xspec:compile:impl}logical-processor-count"
                 as="Q{http://www.w3.org/2001/XMLSchema}integer"
                 use-when="$Q{urn:x-xspec:compile:impl}thread-aware"
                 select="Q{java:java.lang.Runtime}getRuntime() =&gt; Q{java:java.lang.Runtime}availableProcessors()"/>
   <xsl:variable name="Q{urn:x-xspec:compile:impl}thread-count"
                 as="Q{http://www.w3.org/2001/XMLSchema}integer"
                 select="1"
                 use-when="$Q{urn:x-xspec:compile:impl}thread-aware =&gt; not()"/>
   <!-- the main template to run the suite -->
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}main"
                 as="empty-sequence()">
      <xsl:context-item use="absent"/>
      <!-- info message -->
      <xsl:message>
         <xsl:text>Testing with </xsl:text>
         <xsl:value-of select="system-property('Q{http://www.w3.org/1999/XSL/Transform}product-name')"/>
         <xsl:text> </xsl:text>
         <xsl:value-of select="system-property('Q{http://www.w3.org/1999/XSL/Transform}product-version')"/>
      </xsl:message>
      <!-- set up the result document (the report) -->
      <xsl:result-document format="Q{{http://www.jenitennison.com/xslt/xspec}}xml-report-serialization-parameters">
         <xsl:element name="report" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:attribute name="xspec" namespace="">file:/F:/softwareDEV/GIT/repos/suap-gt-specifiche/to_moduli/moduli_fvg/02_entita/test_cases/ent_indirizzo_italiano_v1.0.0.tc.xspec</xsl:attribute>
            <xsl:attribute name="stylesheet" namespace="">file:/F:/softwareDEV/GIT/repos/suap-gt-specifiche/to_moduli/moduli_fvg/02_entita/test_cases/xspec/ent_indirizzo_italiano_v1.0.0.tc-sch-preprocessed.xsl</xsl:attribute>
            <xsl:attribute name="schematron" namespace="">file:/F:/softwareDEV/GIT/repos/suap-gt-specifiche/to_moduli/moduli_fvg/02_entita/ent_indirizzo_italiano_v1.0.0.sch</xsl:attribute>
            <xsl:attribute name="date" namespace="" select="current-dateTime()"/>
            <!-- invoke each compiled top-level x:scenario -->
            <xsl:for-each select="1 to 1">
               <xsl:choose>
                  <xsl:when test=". eq 1">
                     <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1"/>
                  </xsl:when>
                  <xsl:otherwise>
                     <xsl:message terminate="yes">ERROR: Unhandled scenario invocation</xsl:message>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:for-each>
         </xsl:element>
      </xsl:result-document>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>Test sul comune</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/F:/softwareDEV/GIT/repos/suap-gt-specifiche/to_moduli/moduli_fvg/02_entita/test_cases/ent_indirizzo_italiano_v1.0.0.tc.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Test sul comune</xsl:text>
         </xsl:element>
         <xsl:for-each select="1 to 2">
            <xsl:choose>
               <xsl:when test=". eq 1">
                  <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario1"/>
               </xsl:when>
               <xsl:when test=". eq 2">
                  <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario2"/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:message terminate="yes">ERROR: Unhandled scenario invocation</xsl:message>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:for-each>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>..Codice del comune corretto</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario1</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/F:/softwareDEV/GIT/repos/suap-gt-specifiche/to_moduli/moduli_fvg/02_entita/test_cases/ent_indirizzo_italiano_v1.0.0.tc.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Codice del comune corretto</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:attribute name="href" namespace="">file:/F:/softwareDEV/GIT/repos/suap-gt-specifiche/to_moduli/moduli_fvg/02_entita/test_cases/ent_indirizzo_italiano_v1.0.0.tc.ok.xml</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d55e0-doc"
                       as="document-node()"
                       select="doc('file:/F:/softwareDEV/GIT/repos/suap-gt-specifiche/to_moduli/moduli_fvg/02_entita/test_cases/ent_indirizzo_italiano_v1.0.0.tc.ok.xml')"/>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d55e0"
                       select="$Q{urn:x-xspec:compile:impl}context-d55e0-doc ! ( . )"/>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       as="item()*"
                       select="$Q{urn:x-xspec:compile:impl}context-d55e0"/>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}result" as="item()*">
            <xsl:apply-templates select="$Q{urn:x-xspec:compile:impl}context-d55e0"/>
         </xsl:variable>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="report-name" select="'result'"/>
         </xsl:call-template>
         <!-- invoke each compiled x:expect -->
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario1-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario1-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>not assert ass_comune_cl_check /*:indirizzo_italiano[namespace-uri()='http://entita/indirizzo_italiano'][1]</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d50e5" select="()"><!--expected result--></xsl:variable>
      <!-- wrap $x:result into a document node if possible -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="exists($Q{http://www.jenitennison.com/xslt/xspec}result) and Q{http://www.jenitennison.com/xslt/xspec}wrappable-sequence($Q{http://www.jenitennison.com/xslt/xspec}result)">
               <xsl:sequence select="Q{http://www.jenitennison.com/xslt/xspec}wrap-nodes($Q{http://www.jenitennison.com/xslt/xspec}result)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- evaluate the predicate with $x:result (or its wrapper document node) as context item if it is a single item; if not, evaluate the predicate without context item -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="count($Q{urn:x-xspec:compile:impl}test-items) eq 1">
               <xsl:for-each select="$Q{urn:x-xspec:compile:impl}test-items">
                  <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                select="Q{http://purl.oclc.org/dsdl/svrl}schematron-output[Q{http://purl.oclc.org/dsdl/svrl}fired-rule] and empty(Q{http://purl.oclc.org/dsdl/svrl}schematron-output/Q{http://purl.oclc.org/dsdl/svrl}failed-assert[(@id, preceding-sibling::Q{http://purl.oclc.org/dsdl/svrl}fired-rule[1]/@id, preceding-sibling::Q{http://purl.oclc.org/dsdl/svrl}active-pattern[1]/@id)[1] = 'ass_comune_cl_check'][$Q{http://www.jenitennison.com/xslt/xspec}context/root()/(/*:indirizzo_italiano[namespace-uri()='http://entita/indirizzo_italiano'][1]) =&gt; Q{http://www.jenitennison.com/xslt/xspec}node-or-error('/*:indirizzo_italiano[namespace-uri()=''http://entita/indirizzo_italiano''][1]', 'x:expect-not-assert/@location') is Q{http://www.jenitennison.com/xslt/xspec}select-node($Q{http://www.jenitennison.com/xslt/xspec}context/root(), @location, preceding-sibling::Q{http://purl.oclc.org/dsdl/svrl}ns-prefix-in-attribute-values, 3) =&gt; Q{http://www.jenitennison.com/xslt/xspec}node-or-error(@location, name() || '/@location')])"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             select="Q{http://purl.oclc.org/dsdl/svrl}schematron-output[Q{http://purl.oclc.org/dsdl/svrl}fired-rule] and empty(Q{http://purl.oclc.org/dsdl/svrl}schematron-output/Q{http://purl.oclc.org/dsdl/svrl}failed-assert[(@id, preceding-sibling::Q{http://purl.oclc.org/dsdl/svrl}fired-rule[1]/@id, preceding-sibling::Q{http://purl.oclc.org/dsdl/svrl}active-pattern[1]/@id)[1] = 'ass_comune_cl_check'][$Q{http://www.jenitennison.com/xslt/xspec}context/root()/(/*:indirizzo_italiano[namespace-uri()='http://entita/indirizzo_italiano'][1]) =&gt; Q{http://www.jenitennison.com/xslt/xspec}node-or-error('/*:indirizzo_italiano[namespace-uri()=''http://entita/indirizzo_italiano''][1]', 'x:expect-not-assert/@location') is Q{http://www.jenitennison.com/xslt/xspec}select-node($Q{http://www.jenitennison.com/xslt/xspec}context/root(), @location, preceding-sibling::Q{http://purl.oclc.org/dsdl/svrl}ns-prefix-in-attribute-values, 3) =&gt; Q{http://www.jenitennison.com/xslt/xspec}node-or-error(@location, name() || '/@location')])"
                             version="3"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}boolean-test"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="$Q{urn:x-xspec:compile:impl}test-result instance of Q{http://www.w3.org/2001/XMLSchema}boolean"/>
      <!-- did the test pass? -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:sequence select="$Q{urn:x-xspec:compile:impl}test-result =&gt; boolean()"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:message terminate="yes">ERROR in x:expect ('Test sul comune Codice del comune corretto not assert ass_comune_cl_check /*:indirizzo_italiano[namespace-uri()='http://entita/indirizzo_italiano'][1]'): Non-boolean @test must be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario1-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text> not assert ass_comune_cl_check /*:indirizzo_italiano[namespace-uri()='http://entita/indirizzo_italiano'][1]</xsl:text>
         </xsl:element>
         <xsl:element name="expect-test-wrap" namespace="">
            <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:attribute name="test" namespace="">Q{http://purl.oclc.org/dsdl/svrl}schematron-output[Q{http://purl.oclc.org/dsdl/svrl}fired-rule] and empty(Q{http://purl.oclc.org/dsdl/svrl}schematron-output/Q{http://purl.oclc.org/dsdl/svrl}failed-assert[(@id, preceding-sibling::Q{http://purl.oclc.org/dsdl/svrl}fired-rule[1]/@id, preceding-sibling::Q{http://purl.oclc.org/dsdl/svrl}active-pattern[1]/@id)[1] = 'ass_comune_cl_check'][$Q{http://www.jenitennison.com/xslt/xspec}context/root()/(/*:indirizzo_italiano[namespace-uri()='http://entita/indirizzo_italiano'][1]) =&gt; Q{http://www.jenitennison.com/xslt/xspec}node-or-error('/*:indirizzo_italiano[namespace-uri()=''http://entita/indirizzo_italiano''][1]', 'x:expect-not-assert/@location') is Q{http://www.jenitennison.com/xslt/xspec}select-node($Q{http://www.jenitennison.com/xslt/xspec}context/root(), @location, preceding-sibling::Q{http://purl.oclc.org/dsdl/svrl}ns-prefix-in-attribute-values, 3) =&gt; Q{http://www.jenitennison.com/xslt/xspec}node-or-error(@location, name() || '/@location')])</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:if test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
            <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
               <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}test-result"/>
               <xsl:with-param name="report-name" select="'result'"/>
            </xsl:call-template>
         </xsl:if>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d50e5"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario2"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>..Codice del comune non esistente</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario2</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/F:/softwareDEV/GIT/repos/suap-gt-specifiche/to_moduli/moduli_fvg/02_entita/test_cases/ent_indirizzo_italiano_v1.0.0.tc.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Codice del comune non esistente</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:attribute name="href" namespace="">file:/F:/softwareDEV/GIT/repos/suap-gt-specifiche/to_moduli/moduli_fvg/02_entita/test_cases/ent_indirizzo_italiano_v1.0.0.tc.ko.check_cl.xml</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d69e0-doc"
                       as="document-node()"
                       select="doc('file:/F:/softwareDEV/GIT/repos/suap-gt-specifiche/to_moduli/moduli_fvg/02_entita/test_cases/ent_indirizzo_italiano_v1.0.0.tc.ko.check_cl.xml')"/>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d69e0"
                       select="$Q{urn:x-xspec:compile:impl}context-d69e0-doc ! ( . )"/>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       as="item()*"
                       select="$Q{urn:x-xspec:compile:impl}context-d69e0"/>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}result" as="item()*">
            <xsl:apply-templates select="$Q{urn:x-xspec:compile:impl}context-d69e0"/>
         </xsl:variable>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="report-name" select="'result'"/>
         </xsl:call-template>
         <!-- invoke each compiled x:expect -->
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario2-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-scenario2-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>assert ass_comune_cl_check /*:indirizzo_italiano[namespace-uri()='http://entita/indirizzo_italiano'][1] count: 1</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d50e8" select="()"><!--expected result--></xsl:variable>
      <!-- wrap $x:result into a document node if possible -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="exists($Q{http://www.jenitennison.com/xslt/xspec}result) and Q{http://www.jenitennison.com/xslt/xspec}wrappable-sequence($Q{http://www.jenitennison.com/xslt/xspec}result)">
               <xsl:sequence select="Q{http://www.jenitennison.com/xslt/xspec}wrap-nodes($Q{http://www.jenitennison.com/xslt/xspec}result)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- evaluate the predicate with $x:result (or its wrapper document node) as context item if it is a single item; if not, evaluate the predicate without context item -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="count($Q{urn:x-xspec:compile:impl}test-items) eq 1">
               <xsl:for-each select="$Q{urn:x-xspec:compile:impl}test-items">
                  <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                select="count(Q{http://purl.oclc.org/dsdl/svrl}schematron-output/Q{http://purl.oclc.org/dsdl/svrl}failed-assert[(@id, preceding-sibling::Q{http://purl.oclc.org/dsdl/svrl}fired-rule[1]/@id, preceding-sibling::Q{http://purl.oclc.org/dsdl/svrl}active-pattern[1]/@id)[1] = 'ass_comune_cl_check'][$Q{http://www.jenitennison.com/xslt/xspec}context/root()/(/*:indirizzo_italiano[namespace-uri()='http://entita/indirizzo_italiano'][1]) =&gt; Q{http://www.jenitennison.com/xslt/xspec}node-or-error('/*:indirizzo_italiano[namespace-uri()=''http://entita/indirizzo_italiano''][1]', 'x:expect-assert/@location') is Q{http://www.jenitennison.com/xslt/xspec}select-node($Q{http://www.jenitennison.com/xslt/xspec}context/root(), @location, preceding-sibling::Q{http://purl.oclc.org/dsdl/svrl}ns-prefix-in-attribute-values, 3) =&gt; Q{http://www.jenitennison.com/xslt/xspec}node-or-error(@location, name() || '/@location')]) eq 1"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             select="count(Q{http://purl.oclc.org/dsdl/svrl}schematron-output/Q{http://purl.oclc.org/dsdl/svrl}failed-assert[(@id, preceding-sibling::Q{http://purl.oclc.org/dsdl/svrl}fired-rule[1]/@id, preceding-sibling::Q{http://purl.oclc.org/dsdl/svrl}active-pattern[1]/@id)[1] = 'ass_comune_cl_check'][$Q{http://www.jenitennison.com/xslt/xspec}context/root()/(/*:indirizzo_italiano[namespace-uri()='http://entita/indirizzo_italiano'][1]) =&gt; Q{http://www.jenitennison.com/xslt/xspec}node-or-error('/*:indirizzo_italiano[namespace-uri()=''http://entita/indirizzo_italiano''][1]', 'x:expect-assert/@location') is Q{http://www.jenitennison.com/xslt/xspec}select-node($Q{http://www.jenitennison.com/xslt/xspec}context/root(), @location, preceding-sibling::Q{http://purl.oclc.org/dsdl/svrl}ns-prefix-in-attribute-values, 3) =&gt; Q{http://www.jenitennison.com/xslt/xspec}node-or-error(@location, name() || '/@location')]) eq 1"
                             version="3"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}boolean-test"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="$Q{urn:x-xspec:compile:impl}test-result instance of Q{http://www.w3.org/2001/XMLSchema}boolean"/>
      <!-- did the test pass? -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:sequence select="$Q{urn:x-xspec:compile:impl}test-result =&gt; boolean()"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:message terminate="yes">ERROR in x:expect ('Test sul comune Codice del comune non esistente assert ass_comune_cl_check /*:indirizzo_italiano[namespace-uri()='http://entita/indirizzo_italiano'][1] count: 1'): Non-boolean @test must be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-scenario2-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text> assert ass_comune_cl_check /*:indirizzo_italiano[namespace-uri()='http://entita/indirizzo_italiano'][1] count: 1</xsl:text>
         </xsl:element>
         <xsl:element name="expect-test-wrap" namespace="">
            <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:attribute name="test" namespace="">count(Q{http://purl.oclc.org/dsdl/svrl}schematron-output/Q{http://purl.oclc.org/dsdl/svrl}failed-assert[(@id, preceding-sibling::Q{http://purl.oclc.org/dsdl/svrl}fired-rule[1]/@id, preceding-sibling::Q{http://purl.oclc.org/dsdl/svrl}active-pattern[1]/@id)[1] = 'ass_comune_cl_check'][$Q{http://www.jenitennison.com/xslt/xspec}context/root()/(/*:indirizzo_italiano[namespace-uri()='http://entita/indirizzo_italiano'][1]) =&gt; Q{http://www.jenitennison.com/xslt/xspec}node-or-error('/*:indirizzo_italiano[namespace-uri()=''http://entita/indirizzo_italiano''][1]', 'x:expect-assert/@location') is Q{http://www.jenitennison.com/xslt/xspec}select-node($Q{http://www.jenitennison.com/xslt/xspec}context/root(), @location, preceding-sibling::Q{http://purl.oclc.org/dsdl/svrl}ns-prefix-in-attribute-values, 3) =&gt; Q{http://www.jenitennison.com/xslt/xspec}node-or-error(@location, name() || '/@location')]) eq 1</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:if test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
            <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
               <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}test-result"/>
               <xsl:with-param name="report-name" select="'result'"/>
            </xsl:call-template>
         </xsl:if>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d50e8"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
</xsl:stylesheet>

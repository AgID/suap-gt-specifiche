#Assunzioni

ho assunto che la navigazione dei metadati avvenga
1. procedura
2. allegati & schematron & xml-schema
3. form & schematron & xml-schema
4. regime amministrativo
5. fatispecie
6. endoprocedimenti & fase schematron
7. amministrazioni competenti & sistemi ET

e

8. SUAP & BO-SUAP / FO-SUAP

per questo ho predisposto json schema solo per le relazione: 

- con attributi (ad esempio relation-suap-bo-suap)
- per risolvere le cardinalità 1-n (ad esempio relation-procedure-administrative-regime)

assunto il modello di navigazione indicato prima dobbiamo definire le seguenti API

per step 1
- getProcedure(typology, life_event, municipality)

per step 2
- getProcedureAttachment(id_procedure, version_procedure)
- getAttachment(id, version)
- getAttachmentSchematron(id_attachment, version_attachment)
- getSchematron(id, version)
- getAttachmentXMLSchema(id_attachment, version_attachment)
- getXMLSchema(id, version)

per step 3
- getProcedureForm(id_procedure, version_procedure)
- getForm(id, version)
- getFormSchematron(id_form, version_form)
- getSchematron(id, version)
- getFormXMLSchema(id_form, version_form)
- getXMLSchema(id, version)

per step 4
- getProcedureAdministrativeRegime(id_procedure, version_procedure)
- getProcedureAdministrativeRegime(id, version)

per step 5
- getProcedureUseCase(id_procedure, version_procedure)
- getUseCase(id, version)

per step 5
- getUseCaseEndoprocedures(id_use_case, version_use_case)
- getProcedure(id, version)

per step 6
- getUseCasePhasae(id_use_case, version_use_case)

per step 7
- getProcedureCompetentAdministration(id_procedure, version_procedure, municipality)
- getCompetentAdministration(id, version)
- getCompetentAdministrationThirdPartySystem(id_competent_administration, version_competent_administration)
- getThirdPartySystem(id, version)

per step 8
- getSUAP(municipality)
- getSUAP(id, version)
- getSUAPBOSUAP(id_suap,version_suap)
- getBOSUAP(id, version)
- getSUAPFOSUAP(id_suap,version_suap)
- getFOSUAP(id, version)

per local cache

- getProcedure(id)
- getAttachment(id)
- getAdministrativeRegime(id)
- getUseCase(id)
- getForm(id)
- getSchematron(id)
- getXMLSchema(id)
- getCompetentAdministration(id)
- getThirdPartySystem(id)
- getSUAP(id)
- getBOSUAP(id)
- getFOSUAP(id)


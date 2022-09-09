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
- per risolvere le cardinalità 1-n (ad esempio relation-proceeding-administrative-regime)

assunto il modello di navigazione indicato prima dobbiamo definire le seguenti API

per step 1
- getProceedingTypologyLifeEvent(typology, life_event, list municipality) -> [{typology, life_event, municipality}]

- getProceedings(typology, life_event, municipality)  -> [Proceeding:{id, version,...}]

per step 2
- getProceedingAttachment(id_proceeding, version_proceeding) -> [Attachment:{id, version,...}]
- getAttachmentSchematron(id_attachment, version_attachment)  -> Schematron:{id, version,...}
- getAttachmentXMLSchema(id_attachment, version_attachment) -> XMLSchema:{id, version,...}


per step 3
- getProceedingForm(id_proceeding, version_proceeding) -> Form:{id, version,...}
- getFormSchematron(id_form, version_form) -> Schematron:{id, version,...}
- getFormXMLSchema(id_form, version_form)  -> XMLSchema:{id, version,...}


per step 4
- getProceedingAdministrativeRegime(id_proceeding, version_proceeding) -> AdministrativeRegime:{id, version,times,...)}


per step 5
- getProceedingUseCase(id_proceeding, version_proceeding) -> [UseCaseProceeding:{id, version,...}]


per step 5
- getUseCaseProceedingEndoproceedings(id_use_case, version_use_case)  -> [Proceeding:{id, version,mandatary,...}]


per step 6
- getUseCaseProceedingSchematronPhase(id_use_case, version_use_case) -> String

per step 7
- getProceedingCompetentAdministration(id_proceeding, version_proceeding, municipality) -> CompetentAdministration:{id,version,...}
- getCompetentAdministrationThirdPartySystem(id_competent_administration, 
    version_competent_administration) -> ThirdPartySystem:{id,version,...}


per step 8
- getSUAP(municipality) -> SUAP:{id,version,...}

- getSUAPBOSUAP(id_suap,version_suap) -> BOSUAP:{id,version,...}

- getSUAPFOSUAP(id_suap,version_suap) -> FOSUAP:{id,version,...}





per local cache


#Recupero per Municipality

- getProceeding(list municipality) -> [Proceeding:{id, version,...}]
- getProceedingAttachment(list municipality) - [{Proceeding:{id, version},Attachment{id, version}}]
- getAttachment(list municipality) -> [Attachment:{id, version,...}]

- getAdministrativeRegime(list municipality) -> [AdministrativeRegime:{id, version,...}]
- getProceedingAdministrativeRegime(list municipality) - [{Proceeding:{id, version},AdministrativeRegime{id, version},times}]


- getUseCaseProceeding(list municipality)  -> [UseCaseProceeding:{id, version,...}]
- getProceedingUseCaseProceeding(list municipality) - [{Proceeding:{id, version},UseCaseProceeding{id, version}}]
- getUseCaseProceedingUseCaseProceeding(list municipality) - [{UseCaseProceeding:{id, version},UseCaseProceeding{id, version},mandatary}]

- getUseCaseProceedingSchematron(list municipality) - [{UseCaseProceeding:{id, version},Schematron{id, version},phase}]

- getForm(list municipality)  -> [Form:{id, version,...}]
- getProceedingForm(list municipality) - [{Proceeding:{id, version},Form{id, version}}]

- getSchematron(list municipality)  -> [Schematron:{id, version,...}]
- getFormSchematron(list municipality) - [{Form:{id, version},Schematron{id, version}}]
- getXMLSchema(list municipality)  -> [XMLSchema:{id, version,...}]
- getFormXMLSchema(list municipality) - [{Form:{id, version},XMLSchema{id, version}}]

- getCompetentAdministration(list municipality)  -> [CompetentAdministration:{id, version,...}]
- getProceedingCompetentAdministration(list municipality) - [{Proceeding:{id, version},CompetentAdministration{id, version},municipality}]

- getThirdPartySystem(list municipality)  -> [ThirdPartySystem:{id, version,...}]
- getCompetentAdministrationThirdPartySystem(list municipality) - [{CompetentAdministration:{id, version},ThirdPartySystem{id, version}}]

- getSUAP(list municipality)  -> [SUAP:{id, version,...}]
- getBOSUAP(list municipality)  -> [BOSUAP:{id, version,...}]
- getSUAPBOSUAP(list municipality) - [{SUAP:{id, version},BOSUAP{id, version}}]

- getFOSUAP(list municipality)  -> [FOSUAP:{id, version,...}]
- getSUAPFOSUAP(list municipality) - [{SUAP:{id, version},FOSUAP{id, version}}]


#Recupero Per Lista ID

- getProceeding(list id_proceeding) -> [Proceeding:{id, version,...}]
- getProceedingAttachment(list id_proceeding) - [{Proceeding:{id, version},Attachment{id, version}}]
- getAttachment(list id_proceeding) -> [Attachment:{id, version,...}]

- getAdministrativeRegime(list id_proceeding) -> [AdministrativeRegime:{id, version,...}]
- getProceedingAdministrativeRegime(list id_proceeding) - [{Proceeding:{id, version},AdministrativeRegime{id, version},times}]


- getUseCaseProceeding(list id_usecase_proceeding)  -> [UseCaseProceeding:{id, version,...}]
- getProceedingUseCaseProceeding(list id_proceeding) - [{Proceeding:{id, version},UseCaseProceeding{id, version}}]
- getUseCaseProceedingUseCaseProceeding(list id_usecase_proceeding) - [{UseCaseProceeding:{id, version},UseCaseProceeding{id, version},mandatary}]

- getUseCaseProceedingSchematron(list id_usecase_proceeding) - [{UseCaseProceeding:{id, version},Schematron{id, version},phase}]

- getForm(list id_form)  -> [Form:{id, version,...}]
- getProceedingForm(list id_proceeding) - [{Proceeding:{id, version},Form{id, version}}]

- getSchematron(list id_schematron)  -> [Schematron:{id, version,...}]
- getFormSchematron(list id_form) - [{Form:{id, version},Schematron{id, version}}]
- getXMLSchema(list id_xmlschema)  -> [XMLSchema:{id, version,...}]
- getFormXMLSchema(list id_form) - [{Form:{id, version},XMLSchema{id, version}}]

- getCompetentAdministration(list id_competent_administrator)  -> [CompetentAdministration:{id, version,...}]
- getProceedingCompetentAdministration(list id_proceeding) - [{Proceeding:{id, version},CompetentAdministration{id, version},municipality}]

- getThirdPartySystem(list id_third_party_system)  -> [ThirdPartySystem:{id, version,...}]
- getCompetentAdministrationThirdPartySystem(list id_competent_administrator) - [{CompetentAdministration:{id, version},ThirdPartySystem{id, version}}]

- getSUAP(list id_suap)  -> [SUAP:{id, version,...}]
- getBOSUAP(list id_bosuap)  -> [BOSUAP:{id, version,...}]
- getSUAPBOSUAP(list id_suap) - [{SUAP:{id, version},BOSUAP{id, version}}]

- getFOSUAP(list id_fosuap)  -> [FOSUAP:{id, version,...}]
- getSUAPFOSUAP(list id_suap) - [{SUAP:{id, version},FOSUAP{id, version}}]







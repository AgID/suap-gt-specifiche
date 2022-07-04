# Osservazioni incluse nell'esempio

##Centro commerciale

- renaming entità a centro_commerciale
- aggiunto identificativo centro commerciale (partiia_iva + codice_fiscale)

### Valutazione

La proposta non determina variazione al modello di organizzazione proposto in quanto richiede unmaggior dettaglio degli attributi dell'entità

## Luogo

- renaming entità in indirizzo

TOBE: aggiurnare attributi prevedendo dub, toponimo, numero civico, CAP, località

### Valutazione

La proposta non determina variazione al modello di organizzazione proposto in quanto richiede unmaggior dettaglio degli attributi dell'entità

# Protocollo

- aggiungi attributi

### Valutazione

La proposta non determina variazione al modello di organizzazione proposto in quanto richiede unmaggior dettaglio degli attributi dell'entità


# Settori merceologici

- generalizzato con utilizzo di vocabolari

### Valutazione

La proposta richiede una variazione del modello di organizzazione proposto che utilizza gli Schematron per controllare gli input prodotti dal soggetto presentatore, tale circostamza comporto l'esigenza che a livello implementativo le regole predisposte negli Schematron prodotti siano implementati

# Organizzazione dei moduli

Si conferma l'utilizzo delle choice nella definizione dello schema del modulo evidenzianodo che attraverso le phase dei relativi schematron, pilotate dal catalogo SSU, si provvede a determinare la scela dello specifico element presente nella stessa choice.

### Valutazione

La proposta richiede una variazione del modello di organizzazione proposto in quanto sarebbe necessario, per assicurare i necessari controlli tra sezioni (si veda esempio vicinato alimentare in cui è necessario assicurare il popomanto dell'attributo settori_merceologici/settore_merceologico alimentare della sezione apertura_esercizio_vicinato requisiti_professionali della sezione requisiti_onorabilita_professionali) prevedere un XSD generico per l'inclusione delle sezioni relative ad uno specifico modulo, controllati da specifici Schematron.


# Dichiarazioni

- generalizzato con utilizzo di vocabolari

### Valutazione

La proposta richiede una variazione del modello di organizzazione proposto che utilizza gli Schematron per controllare gli input prodotti dal soggetto presentatore, tale circostamza comporto l'esigenza che a livello implementativo le regole predisposte negli Schematron prodotti siano implementati


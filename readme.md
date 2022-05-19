# Repository artifact Gruppo Tecnico articolo 5 Allegato DRP 160/2010

Repo degli artifact prodotti da:

- tavolo operativo moduli, a cui è dedicato il folder [to_moduli](https://github.com/AgID/suap-gt-specifiche/tree/main/to_moduli)
- tavolo operativo interoperabilità, a cui è dedicato il folder [to_interoperabilita](https://github.com/AgID/suap-gt-specifiche/tree/main/to_interoperabilita)
- tavolo operativo enti terzi, a cui è dedicato il folder [to_enti_terzi](https://github.com/AgID/suap-gt-specifiche/tree/main/to_enti_terzi)
- tavolo operativo catalogo, a cui è dedicato il folder [to_catalogo](https://github.com/AgID/suap-gt-specifiche/tree/main/to_catalogo)


##  Workflow applicato per la gestione del repo

Per la gestione del presente repo si utilizza **Artifact Branch Workflow* che prevede:

- **[FORK DEL REPO]** i soggetti che partecipano alla definizione degli artifact DEVONO effettuare il fork del repo utilizzado l'intefaccia web di git hub

- **[START EDITING ARTIFACT]** un utente Admin DEVE crea un branch per artifact prevista dal piano di attività dei tavoli operativi applicando la seguente regola di naming <tavolo_operativo>-<feature_name> dove:

    - <tavolo_operativo> = to_moduli | to_interoperabilita | to_enti_terzi |  to_catalogo
    - <feature_name> è il nome della feature
```
    git pull
    git checkout -b <tavolo_operativo>-<feature_name>
    git push origin <tavolo_operativo>-<feature_name>
```

- **[EDITING ARTIFACT]** i soggetti che partecipano alla definizione degli artifact DEVONO 

1. effetuare una sync fork utilizzado l'intefaccia web di git hub

2. definire il proprio contributo nel proprio fork lavorando sullo specifico branch dell'artifact a cui contribuisce e prevedere per ogni commit un messaggio per descrivere la natura dello (<commit_description>)

```
    commit -am "<commit_description>"
```

3. effettuare pull request dal proprio fork verso il repo utilizzando l'intefaccia web di git hub 

-  **[MERGE ARTIFACT]** l'Admin del repo effettua valutazione delle pull request e provvede a:

    - in caso di valutazione positiva effettua il merge dello specifico branch
    - altrimenti segnala al soggetto che hanno contribuuto alla definizione dell'artifact i dubbi in merito allo stesso

-  **[MERGE MAIN]** conclusa l'attività di editing si un singolo artifact l'Admin del repo effettua valutazione il merge del relativo branche sul main

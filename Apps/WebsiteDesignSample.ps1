$site_script = '   
 {
     "$schema": "schema.json",
         "actions": [
             {
                 "verb": "createSPList",
                 "listName": "Projektdaten",
                 "templateType": 101,
                 "subactions": [
                     {
                         "verb": "setDescription",
                         "description": "Projektdaten"
                     },
                     {
                         "verb": "addSPField",
                         "fieldType": "Text",
                         "displayName": "Projektbeschreibung",
                         "isRequired": false,
                         "addToDefaultView": true
                     },
                     {
                         "verb": "addSPField",
                         "fieldType": "Number",
                         "displayName": "Anzahl",
                         "addToDefaultView": true,
                         "isRequired": true
                     },
                     {
                         "verb": "addSPField",
                         "fieldType": "User",
                         "displayName": "Projektleiter",
                         "addToDefaultView": true,
                         "isRequired": true
                     },
                     {
                         "verb": "addSPField",
                         "fieldType": "Note",
                         "displayName": "Meeting Notes",
                         "isRequired": false
                     },
                     {
                         "verb": "addSPField",
                         "fieldType": "text",
                         "displayName": "Abteilung",
                         "isRequired": false
                     }
                 ]
             }
         ],
             "bindata": { },
     "version": 1
 }
 '

 ##
 Add-SPOSiteScript -Title "Alexander-Skript" -Content $site_script -Description "Alexander-Skript-Projektvorlage"

 ## Hinzufügen des neuen Designs -> ID aus Shell eintragen(Zeile56)
 Add-SPOSiteDesign -Title "AlexS-Testlauf für Bib mit Spalte" -WebTemplate "64" -SiteScripts "ebf7a188-deab-4b83-9f58-aa6065af77c7" -Description "mein-Skript"

 ## neue Teamsite erstellen und via Zahnrad "Design anwenden"... Info: Zeile59 Wert "64" ist Teamsite modern; Wert "68" ist Kommunikationsite für alle anderen Wert "1 eintragen"

 #siehe auch  https://docs.microsoft.com/de-de/sharepoint/dev/declarative-customization/get-started-create-site-design#use-the-new-site-design 
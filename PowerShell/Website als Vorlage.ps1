$adminSiteUrl = "m365x16523098-admin.sharepoint.com"
$SiteURL = "https://m365x16523098.sharepoint.com/sites/DemoPS"
# Connect 

Connect-SPOService -Url https://m365x01514471-admin.sharepoint.com

# Holen der Infos und Speichern als txt
Get-SPOSiteScriptFromWeb –WebUrl $siteUrl -IncludeTheme -IncludeBranding -IncludeSiteExternalSharingCapability –IncludeRegionalSettings -IncludeLinksToExportedItems -IncludedLists $relativeListUrls | Out-File D:\ThemeExport.txt

#####

#Define Parameters
$adminSiteUrl = "m365x16523098-admin.sharepoint.com"
$SiteURL = "https://m365x16523098.sharepoint.com/sites/DemoPS"
# evtl rel Url einer Unterwebsite $relativeListUrls = "/dsv" 
  
#Connect to SharePoint Online
Connect-SPOService -Url $adminSiteUrl -credential (Get-Credential)
  
#Get the site schema
$SiteSchema = Get-SPOSiteScriptFromWeb -WebURL $SiteURL -IncludeBranding -IncludeTheme -IncludeRegionalSettings -IncludeSiteExternalSharingCapability -IncludedLists  ("Lists/Liste1","Bib1")
  
#Add site schema as Site Script
$SiteScript = Add-SPOSiteScript -Title "Andreas Site Template v1" -Content $SiteSchema
  
#Create a Site Design for Team Site template
$SiteDesign = Add-SPOSiteDesign -Title "Andreas Site Template v1" -WebTemplate 64 -SiteScripts $SiteScript.Id


# https://www.sharepointdiary.com/2019/11/sharepoint-online-create-site-design-from-existing-site.html#ixzz7vkDegSDO

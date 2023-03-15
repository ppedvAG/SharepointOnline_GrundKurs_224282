
$adminSiteUrl = "m365x01514471-admin.sharepoint.com"
$siteUrl = "https://m365x01514471.sharepoint.com/sites/Demo5"
$relativeListUrls = "/dsv" 
Connect-SPOService -Url https://m365x01514471-admin.sharepoint.com
Get-SPOSiteScriptFromWeb -WebUrl
Get-SPOSiteScriptFromWeb –WebUrl $siteUrl -IncludeTheme -IncludeBranding -IncludeSiteExternalSharingCapability –IncludeRegionalSettings -IncludeLinksToExportedItems -IncludedLists $relativeListUrls | Out-File D:\ThemeExport.txt


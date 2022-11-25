$ErrorActionPreference = 'stop'

$StackName = 'quest-app'
$TemplateBody = Get-Content -Path testing.yml -Raw

if ((Get-CFNStack -StackName $StackName -ErrorAction Ignore)) {
   Update-CFNStack -StackName $StackName -TemplateBody $TemplateBody
}
else {
    New-CFNStack -StackName $StackName -TemplateBody $TemplateBody
}

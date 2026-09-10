Add-Type -AssemblyName System.IO.Compression.FileSystem

$path = 'C:\Users\USER\OneDrive\ANYWAY\ESCOOTER_Project\WhitePaperISTRC26\NewMali\Policy Paper Proposal_20260516.docx'
$backup = 'C:\Users\USER\OneDrive\ANYWAY\ESCOOTER_Project\WhitePaperISTRC26\NewMali\Policy Paper Proposal_20260516 - pre-reference-cleanup-backup.docx'

Copy-Item -LiteralPath $path -Destination $backup -Force

$tmp = Join-Path $env:TEMP ('docxrefclean_' + [guid]::NewGuid())
New-Item -ItemType Directory -Path $tmp | Out-Null
[System.IO.Compression.ZipFile]::ExtractToDirectory($path, $tmp)

$docPath = Join-Path $tmp 'word\document.xml'
$xml = [xml](Get-Content -LiteralPath $docPath -Raw)
$script:ns = New-Object System.Xml.XmlNamespaceManager($xml.NameTable)
$script:ns.AddNamespace('w', 'http://schemas.openxmlformats.org/wordprocessingml/2006/main')

function Set-ParaText([System.Xml.XmlNode]$p, [string]$text) {
  $rNodes = @($p.SelectNodes('./w:r', $script:ns))
  if ($rNodes.Count -eq 0) { return }
  $first = $rNodes[0]
  $tNode = $first.SelectSingleNode('.//w:t', $script:ns)
  if ($null -eq $tNode) { return }
  $tNode.InnerText = $text
  for ($i = $rNodes.Count - 1; $i -ge 1; $i--) {
    [void]$p.RemoveChild($rNodes[$i])
  }
}

$paras = @($xml.SelectNodes('//w:body/w:p', $script:ns))

Set-ParaText $paras[15] 'Selected references'
Set-ParaText $paras[16] '1. International Transport Forum. (2024). Safer micromobility. OECD Publishing. https://doi.org/10.1787/0d2e0dd5-en'
Set-ParaText $paras[17] '2. International Transport Forum. (2020). Safe micromobility. OECD Publishing. https://doi.org/10.1787/0b98fac1-en'
Set-ParaText $paras[18] '3. Cicchino, J. B., Kulie, P. E., & McCarthy, M. L. (2021). Severity of e-scooter rider injuries associated with trip characteristics. Journal of Safety Research, 76, 256-261. https://doi.org/10.1016/j.jsr.2020.12.016'
Set-ParaText $paras[19] '4. Niemann, M., Braun, K. F., Otto, E., Tiefenbrunner, M., Wuster, J., Stockle, U., Ahmad, S. S., Mardian, S., & Graef, F. (2023). Dangers of e-mobility: A systematic review and meta-analysis of sustained injury patterns and injury severity. Safety Science, 167, 106283. https://doi.org/10.1016/j.ssci.2023.106283'
Set-ParaText $paras[20] '5. Janikian, G., Caird, J., Hagel, B., & Reay, G. (2024). A scoping review of e-scooter safety: Delightful urban slalom or injury epidemic? Transportation Research Part F: Traffic Psychology and Behaviour. https://doi.org/10.1016/j.trf.2023.12.015'
Set-ParaText $paras[21] '6. Kumar, S., Lee, P., Zagales, R., Yates, Z., Haddadi, M., Strouse, J., Zito, T., & Elkbuli, A. (2024). A comprehensive review of current trends in e-scooter associated injuries, associated outcomes, and effective interventions: Towards establishing sustainable prevention interventions. Injury, 55(12), 111967. https://doi.org/10.1016/j.injury.2024.111967'
Set-ParaText $paras[22] '7. Dibaj, S., Vosough, S., Kazemzadeh, K., O''Hern, S., & Mladenovic, M. N. (2024). An exploration of e-scooter injuries and severity: Impact of restriction policies in Helsinki, Finland. Journal of Safety Research, 91, 271-282. https://doi.org/10.1016/j.jsr.2024.09.006'
Set-ParaText $paras[23] '8. Zhang, Y., Nelson, J., & Mulley, C. (2024). Learning from the Evidence: Insights for Regulating E-scooters. Transport Policy. https://doi.org/10.1016/j.tranpol.2024.04.001'
Set-ParaText $paras[24] '9. Israel Central Bureau of Statistics. (2018). Public Use File (PUF): Road accidents with casualties, extended type, abbreviated downloadable file. https://www.cbs.gov.il/he/publications/DocLib1/2015/PUF/h20181331abstract.pdf'
Set-ParaText $paras[25] '10. Sher, M., & Garmash, N. (2026). From Data to Safer E-Scooter Rides: An Open Safety Dashboard for Tel Aviv. ISTRC Annual Conference, Technion.'

$settings = New-Object System.Xml.XmlWriterSettings
$settings.Encoding = New-Object System.Text.UTF8Encoding($false)
$settings.Indent = $false
$writer = [System.Xml.XmlWriter]::Create($docPath, $settings)
$xml.Save($writer)
$writer.Close()

$tmpZip = Join-Path $env:TEMP ('docxzip_' + [guid]::NewGuid().ToString() + '.zip')
Compress-Archive -Path (Join-Path $tmp '*') -DestinationPath $tmpZip
Remove-Item -LiteralPath $path -Force
Move-Item -LiteralPath $tmpZip -Destination $path -Force
Remove-Item -LiteralPath $tmp -Recurse -Force

Write-Output 'Cleaned references in Policy Paper Proposal_20260516.docx.'

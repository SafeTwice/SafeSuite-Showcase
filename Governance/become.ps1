# become.ps1 — put a member of the Showcase cast's signing identity on this computer (Level 1, passphrase: agripto).
#   become.cmd elena-vidal      become.cmd -List      become.cmd -Restore
param([string]$Name, [switch]$Restore, [switch]$List)
$ErrorActionPreference = 'Stop'
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$packs = Join-Path $here 'Identities'
$app = Join-Path $env:APPDATA 'SafeSuite'
$signing = Join-Path $app 'signing'
$identity = Join-Path $app 'SigningIdentity.json'
$backup = Join-Path $app 'SigningIdentity.before-showcase.json'

if ($List -or (-not $Name -and -not $Restore)) {
    Get-ChildItem $packs -Directory | ForEach-Object {
        $j = Get-Content (Join-Path $_.FullName 'SigningIdentity.json') -Raw | ConvertFrom-Json
        '{0,-20} {1}' -f $_.Name, $j.DisplayName
    }
    exit 0
}
if ($Restore) {
    if (Test-Path $backup) { Move-Item $backup $identity -Force; 'Your own identity is back.' }
    elseif (Test-Path $identity) { Remove-Item $identity; 'The showcase identity is removed; this computer signs at Level 0 (claimed) again.' }
    else { 'Nothing to restore.' }
    exit 0
}
$pack = Join-Path $packs $Name
if (-not (Test-Path (Join-Path $pack 'SigningIdentity.json'))) { Write-Error "No pack named '$Name' under $packs. Run become.cmd -List."; exit 1 }
New-Item -ItemType Directory -Force $signing | Out-Null
if ((Test-Path $identity) -and -not (Test-Path $backup)) {
    if ((Get-Content $identity -Raw) -notmatch 'Showcase identity pack') { Copy-Item $identity $backup }   # keep your own identity once
}
$key = Get-ChildItem $pack -Filter '*.key.json' | Select-Object -First 1
Copy-Item $key.FullName (Join-Path $signing $key.Name) -Force
$dir = $signing.Replace('\', '/')
(Get-Content (Join-Path $pack 'SigningIdentity.json') -Raw).Replace('{{SIGNING_DIR}}', $dir) | Set-Content $identity -Encoding UTF8
$j = Get-Content $identity -Raw | ConvertFrom-Json
"You are now $($j.DisplayName) - Level 1 (local-passphrase), passphrase: agripto. Reopen the project (or Help > Signing identity) in SafeSuite."

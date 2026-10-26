# Links ~/.claude to this repo so Claude Code reads the kit from here.
# Safe to run more than once: real folders are moved to a dated backup first,
# existing links are left alone.
$ErrorActionPreference = 'Stop'

$repo   = Split-Path -Parent $PSScriptRoot
$claude = Join-Path $env:USERPROFILE '.claude'
$backup = Join-Path $claude ("backup-before-links-" + (Get-Date -Format 'yyyy-MM-dd-HHmm'))

$links = @(
    @{ Link = Join-Path $claude 'commands';         Target = Join-Path $repo 'commands' },
    @{ Link = Join-Path $claude 'agents';           Target = Join-Path $repo 'agents' },
    @{ Link = Join-Path $claude 'skills\playbook';  Target = Join-Path $repo 'skills\playbook' }
)

foreach ($l in $links) {
    $item = Get-Item -LiteralPath $l.Link -Force -ErrorAction SilentlyContinue
    if ($item -and $item.LinkType -eq 'Junction') {
        Write-Output "ok (already linked): $($l.Link)"
        continue
    }
    if ($item) {
        New-Item -ItemType Directory -Force -Path $backup | Out-Null
        Move-Item -LiteralPath $l.Link -Destination (Join-Path $backup ($l.Link.Substring($claude.Length + 1) -replace '\\', '_'))
        Write-Output "backed up: $($l.Link)"
    }
    New-Item -ItemType Junction -Path $l.Link -Target $l.Target | Out-Null
    Write-Output "linked: $($l.Link) -> $($l.Target)"
}

# The global CLAUDE.md imports this repo's copy, so the rules live here too.
$globalMd = Join-Path $claude 'CLAUDE.md'
$import   = '@~/dev/claude-setup/global/CLAUDE.md'
if (-not (Test-Path $globalMd) -or -not (Select-String -LiteralPath $globalMd -SimpleMatch $import -Quiet)) {
    Write-Output "NOTE: add this line at the top of $globalMd :  $import"
}

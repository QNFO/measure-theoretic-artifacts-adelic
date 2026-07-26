$ErrorActionPreference = "Continue"
$src = "C:\Users\LENOVO\AppData\Local\Programs\DeepChat"
$dst = "D:\qnfoworkspace"

# Helper: move if exists
function Move-IfExists($from, $to) {
    if (Test-Path $from) {
        $toDir = Split-Path $to -Parent
        if (-not (Test-Path $toDir)) { New-Item -ItemType Directory -Path $toDir -Force | Out-Null }
        Move-Item $from $to -Force -ErrorAction SilentlyContinue
        if ($?) { Write-Host "  MOVED: $from -> $to" }
        else { Write-Host "  FAILED: $from" }
    }
}

function Remove-IfExists($path) {
    if (Test-Path $path) {
        Remove-Item $path -Recurse -Force -ErrorAction SilentlyContinue
        if ($?) { Write-Host "  DELETED: $path" }
        else { Write-Host "  FAILED: $path" }
    }
}

Write-Host "=== MIGRATING RESEARCH PROJECT DIRECTORIES ==="
$researchDirs = @(
    "adelic-experiments", "alpha-pi-helix", "alpha-pi-helix-sta", "alpha-pi-helix-repo",
    "29-schisms-deepdive", "shor-phase3", "artifacts", "audit",
    "bruhat-tits-build", "harmonische-paradigma", "informational-universe",
    "macroscopic-boundary-paper", "NUMERATA", "phase-0-adversarial-testing",
    "projects", "releases", "cfpe-methodology", "cfpe-paradigm-forecast",
    "cfpe-stages-3-5", "cfpe-pages-v2", "qnfo-100yr-forecast", "qnfo",
    "infomatics-recovery"
)
foreach ($d in $researchDirs) {
    $fromPath = Join-Path $src $d
    $toPath = Join-Path $dst "research\$d"
    Move-IfExists $fromPath $toPath
}

Write-Host "`n=== MIGRATING WORKER/INFRA DIRECTORIES ==="
$workerDirs = @(
    "qnfo-legal-worker", "qnfo-legal-repo", "qnfo-license-repo",
    "ask-qwav-v2", "qnfo-qwav-v2", "memory-infra", "r2-gateway",
    "legal-deploy"
)
foreach ($d in $workerDirs) {
    $fromPath = Join-Path $src $d
    $toPath = Join-Path $dst "workers\$d"
    Move-IfExists $fromPath $toPath
}

Write-Host "`n=== MIGRATING CALIBRATION FILES ==="
$calFiles = @(
    "cal01_transmon.py", "cal01_red_team.py", "cal01_results.json",
    "cal03_cmb_logper.py", "cal03_results.json",
    "cal04_red_team.py", "cal04_red_team_audit.json", "cal04_red_team_report.md",
    "cal04_rge_data.csv", "cal04_convergence_summary.csv", "cal04_summary.md",
    "cal04_output.txt", "cal04_zenodo_deposit.py",
    "calibration_baseline.json", "CALIBRATION_REGISTER_SUMMARY.md",
    "bayesian_model_refined_v2.json"
)
foreach ($f in $calFiles) {
    $fromPath = Join-Path $src $f
    $toPath = Join-Path $dst "calibration\$f"
    Move-IfExists $fromPath $toPath
}

Write-Host "`n=== MIGRATING KAPPA-SIIT FILES ==="
$kappaFiles = Get-ChildItem $src -File | Where-Object { $_.Name -like "kappa-siit*" -or $_.Name -like "pi-adelic*" -or $_.Name -like "iwasawa*" -or $_.Name -like "p-adic*" -or $_.Name -like "ostrowski*" -or $_.Name -like "ewsb*" -or $_.Name -like "bqnn*" -or $_.Name -like "bruhat-tits*" }
foreach ($f in $kappaFiles) {
    Move-IfExists $f.FullName (Join-Path $dst "research\$($f.Name)")
}

Write-Host "`n=== MIGRATING CFPE/QNFO FORECAST FILES ==="
$cfpeFiles = Get-ChildItem $src -File | Where-Object { $_.Name -like "cfpe*" -or $_.Name -like "CFPE*" -or $_.Name -like "QNFO_100YR*" -or $_.Name -like "qnfo_forecast*" -or $_.Name -like "comparative*" -or $_.Name -like "counterfactual*" -or $_.Name -like "evidence_grading*" -or $_.Name -like "falsification*" -or $_.Name -like "fault_tree*" -or $_.Name -like "sub_scenario*" }
foreach ($f in $cfpeFiles) {
    Move-IfExists $f.FullName (Join-Path $dst "research\$($f.Name)")
}

Write-Host "`n=== MIGRATING PAPER PDFs AND MDs ==="
$paperFiles = Get-ChildItem $src -File | Where-Object { 
    $_.Name -like "paper1*" -or $_.Name -like "paper2*" -or $_.Name -like "paper-s10*" -or
    $_.Name -like "APH*" -or $_.Name -like "GRAND-SYNTHESIS*" -or
    $_.Name -like "29-schism*" -or $_.Name -like "iqm*" -or
    $_.Name -like "UNIFIED*" -or $_.Name -like "R2-MULTI*" -or
    $_.Name -like "executable*" -or $_.Name -like "completion*" -or
    $_.Name -like "cross-link*" -or $_.Name -like "formal*" -or
    $_.Name -like "PROMPT-AUDIT*" -or $_.Name -like "QNFO-ULA*" -or
    $_.Name -like "qnfo-ula*" -or $_.Name -like "qnfo-consilient*" -or
    $_.Name -like "red-team*" -or $_.Name -like "phase4*" -or
    $_.Name -like "wang_*" -or $_.Name -like "whitepaper*" -or
    $_.Name -like "osf_registration*" -or $_.Name -like "KAIZEN*"
}
foreach ($f in $paperFiles) {
    Move-IfExists $f.FullName (Join-Path $dst "research\$($f.Name)")
}

Write-Host "`n=== MIGRATING SIMULATION OUTPUTS ==="
$simFiles = Get-ChildItem $src -File | Where-Object { $_.Name -like "protocol*" -or $_.Name -like "run-all*" }
foreach ($f in $simFiles) {
    Move-IfExists $f.FullName (Join-Path $dst "simulations\$($f.Name)")
}

Write-Host "`n=== MIGRATING SKILL FILE COPIES (these should be in skills repo only) ==="
$skillFiles = @("cloudflare/SKILL.md", "code/SKILL.md", "documents/SKILL.md", 
    "frontend-design/SKILL.md", "git-github/SKILL.md", "knowledge/SKILL.md",
    "qnfo-agent/SKILL.md", "research/SKILL.md")
foreach ($f in $skillFiles) {
    $fromPath = Join-Path $src $f
    # Just delete - they're in the skills repo
    Remove-IfExists $fromPath
}

Write-Host "`n=== MIGRATING JSON DATA FILES ==="
$jsonFiles = Get-ChildItem $src -File | Where-Object { 
    $_.Name -like "*_slugs*" -or $_.Name -like "lp_*" -or 
    $_.Name -like "kg_*" -or $_.Name -like "missing*" -or
    $_.Name -like "arxiv*" -or $_.Name -like "living-paper*" -or
    $_.Name -like "ipatent*" -or $_.Name -like "qwav*" -or
    $_.Name -like "silent-radix*"
}
foreach ($f in $jsonFiles) {
    Move-IfExists $f.FullName (Join-Path $dst "ephemeral\$($f.Name)")
}

Write-Host "`n=== DELETING WRANGLER LOCAL DEV STATE ==="
Remove-IfExists (Join-Path $src ".wrangler")
Remove-IfExists "C:\Users\LENOVO\.wrangler"

Write-Host "`n=== DELETING EPHEMERAL/UPLOAD LOGS ==="
$ephemeral = Get-ChildItem $src -File | Where-Object {
    $_.Name -like "*_upload_log*" -or $_.Name -like "r2_upload*" -or
    $_.Name -like "insert_audit*" -or $_.Name -like "rclone*" -or
    $_.Name -like "infographic_*" -or $_.Name -like "PROVENANCE*" -or
    $_.Name -like "snapshot_blob*" -or $_.Name -like "scan_cleanup*" -or
    $_.Name -like "inventory*" -or $_.Name -like "step1*" -or
    $_.Name -like "disk_scan*" -or $_.Name -like "HANDOFF*"
}
foreach ($f in $ephemeral) {
    Remove-IfExists $f.FullName
}

Write-Host "`n=== MIGRATING 2026 DATED FILES ==="
$dateFiles = Get-ChildItem $src -File | Where-Object { $_.Name -match "^2026-07-\d\d" }
foreach ($f in $dateFiles) {
    Move-IfExists $f.FullName (Join-Path $dst "ephemeral\$($f.Name)")
}

Write-Host "`n=== DONE ==="

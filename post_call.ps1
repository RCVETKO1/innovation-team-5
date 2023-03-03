$headers = @{
    "Accept"        = "application/vnd.github+json"
    "Authorization" = "token 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"
}

$uri = "https://api.github.com/repos/RCVETKO1/innovation-team-5/dispatches"

$body = @{
    event_type = "run-template"
}
$body_json = $body | ConvertTo-Json

$response = Invoke-RestMethod -Method 'Post' -Uri $uri -Headers $headers -Body $body_json
$response
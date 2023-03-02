$headers = @{
    "Accept"        = "application/vnd.github+json"
    "Authorization" = "token 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"
}

$uri = "https://api.github.com/repos/RCVETKO1/innovation-team-5/dispatches"

$body = @{
    event_type = "do-something"
}
$body_json = $body | ConvertTo-Json

$response = Invoke-RestMethod -Method 'Post' -Uri $uri -Headers $headers -Body $body_json

$response
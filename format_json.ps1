  Param ($json_file)
  $utf8 = [System.Text.Encoding]::GetEncoding('utf-8')
  $OutputEncoding = $utf8
  [System.Console]::OutputEncoding = $utf8
  $formatted_date = (Get-Date).ToString("yyyyMMdd")
  $out_filename = $formatted_date + "_" + $json_file.Substring(2)
  Get-Content -Encoding UTF8 $json_file | jq-win64.exe . | Out-File -Encoding UTF8 $out_filename

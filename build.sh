#!/bin/sh
# Wraps src/app.html (Claude Artifact format: no doctype or head) into a standalone index.html.
# The <head> opener, charset/viewport and the link-preview meta tags live here;
# src/app.html supplies <title> and everything after it.
set -e
cd "$(dirname "$0")"
{
  cat <<'HEAD'
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">
<meta name="description" content="A clickable prototype that turns a Zedu workspace into an office tower: teams are floors, channels are rooms, and you can see who's around, call them, or walk over.">
<link rel="canonical" href="https://zedu-tower.vercel.app/">
<meta name="theme-color" content="#17695A">
<link rel="icon" href="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 64 64'%3E%3Crect width='64' height='64' rx='14' fill='%2317695A'/%3E%3Crect x='17' y='12' width='30' height='42' rx='2' fill='%23EFF2EF'/%3E%3Cg fill='%2317695A'%3E%3Crect x='22' y='18' width='8' height='6' rx='1'/%3E%3Crect x='34' y='18' width='8' height='6' rx='1'/%3E%3Crect x='22' y='28' width='8' height='6' rx='1'/%3E%3Crect x='34' y='28' width='8' height='6' rx='1'/%3E%3Crect x='22' y='38' width='8' height='6' rx='1'/%3E%3Crect x='34' y='38' width='8' height='6' rx='1'/%3E%3Crect x='28' y='46' width='8' height='8'/%3E%3C/g%3E%3C/svg%3E">
<link rel="apple-touch-icon" href="/apple-touch-icon.png">
<meta property="og:type" content="website">
<meta property="og:site_name" content="Zedu Tower">
<meta property="og:title" content="Zedu Tower">
<meta property="og:description" content="A clickable prototype that turns a Zedu workspace into an office tower: teams are floors, channels are rooms, and you can see who's around, call them, or walk over.">
<meta property="og:url" content="https://zedu-tower.vercel.app/">
<meta property="og:image" content="https://zedu-tower.vercel.app/og.png">
<meta property="og:image:width" content="1200">
<meta property="og:image:height" content="630">
<meta property="og:image:alt" content="Zedu Tower: a cutaway office tower with lit rooms and people on each floor.">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="Zedu Tower">
<meta name="twitter:description" content="A clickable prototype that turns a Zedu workspace into an office tower: teams are floors, channels are rooms, and you can see who's around, call them, or walk over.">
<meta name="twitter:image" content="https://zedu-tower.vercel.app/og.png">
<meta name="twitter:image:alt" content="Zedu Tower: a cutaway office tower with lit rooms and people on each floor.">
HEAD
  cat src/app.html
  printf '\n</html>\n'
} > index.html
echo "built index.html"

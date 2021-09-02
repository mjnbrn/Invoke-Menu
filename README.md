# Invoke-Menu
## Intro
Just a simple powershell menu thing
## Usage
### Old Timey Text Instructions

1. Clone Me
1. Dot Source Me
1. Build an array!
1. INVOKE MEnu
1. Optionally, provide a menu title!

```Powershell
git clone https://github.com/mjnbrn/Invoke-Menu.git
. .\Invoke-Menu\Invoke-Menu.ps1
$JustAnArray = "cheesy biscuits",[pscustomobject]@{cheese="gouda";sauce="alfredo";protein="chickens"},3.14
Invoke-Menu -MenuOptions $JustAnArray
Invoke-Menu -MenuOptions $JustAnArray -MenuTitle "Just a fun menu!"
```
### New Fangled YIF
![ignore cursor](docs/Invoke-Menu.gif)

:*:,ssys::curl -sL shrayas.com/simplesys | bash

;;;;;;;;;;;;;;; Emails and Phone

:*:,@w::shrayasr@logicsoft.co.in
:*:,@p::shrayasr@gmail.com
:*:,99::9940694149

;;;;;;;;;;;;;;; CONVENTIONAL COMMENTS
;;;;;;;;;;;;;;; Used for code review on github

:*:,crp::**Praise:**`n`n
:*:,crnit::**Nitpick:**`n`n
:*:,crl::**Nitpick:**`n`nSpelling Mistake: 
:*:,crs::**Suggestion:**`n`n
:*:,crq::**Question:**`n`n
:*:,crt::**Thought:**`n`n
:*:,crb::**Possible Bug:**`n`n
:*:,crx::**Blocked:**`n`n
:*:,crf::**Fix:**`n`n
:*:,crr::**Note to reviewer:**`n`n


;;;;;;;;;;;;; Common paths

:*:,,wc::D:\work\code\
:*:,,d::D:\dump\


;;;;;;;;;;;;; Emojis

:*:,,check::✅

;;;;;;;;;;;;; Browser hotstrings

;; ,nsdns
;; Hotstring to be typed into a brower window 
;; Helps edit DNS entries for that domain on namecheap.com
:*:,nsdns::
{
    Send("https://ap.www.namecheap.com/domains/domaincontrolpanel//advancedns")
    Send("{left 11}")
}
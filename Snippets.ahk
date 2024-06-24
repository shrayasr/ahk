:*:,ssys::curl -sL shrayas.com/simplesys | bash

:*:,now::
{
    SendText(A_Year . "-" . A_MM . "-" . A_DD . "T" . A_Hour . ":" . A_Min)
}


;;;;;;;;;;;;;;; Emails and Phone

:*:,@w::shrayasr@logicsoft.co.in
:*:,@p::shrayasr@gmail.com
:*:,99::9940694149

;;;;;;;;;;;;;;; CONVENTIONAL COMMENTS
;;;;;;;;;;;;;;; Used for code review on github

:*:,crp::**Praise:**`n`n
:*:,crs::**Suggestion:**`n`n
:*:,crn::**Note:**`n`n
:*:,crq::**Question:**`n`n
:*:,crt::**Thought:**`n`n
:*:,crb::**Possible Bug:**`n`n
:*:,crx::**Blocked:**`n`n
:*:,crf::**Fix:**`n`n
:*:,crr::**Note to reviewer:**`n`n

:*:,ghn::
{
  send ("> [{!}NOTE]{enter}")
  send ("> ")
}


;;;;;;;;;;;;; Common paths

:*:,,wc::D:\work\code\
:*:,,d::D:\dump\


;;;;;;;;;;;;; Emojis

:*:;;check::✅
:*:;;down::⤵️

;;;;;;;;;;;;; Browser hotstrings

;; ,nsdns
;; Hotstring to be typed into a brower window 
;; Helps edit DNS entries for that domain on namecheap.com
:*:,nsdns::
{
    Send("https://ap.www.namecheap.com/domains/domaincontrolpanel//advancedns")
    Send("{left 11}")
}

:*:,ipip::
{
  Send("icanhazip.com")
  Send("{Enter}")
}

;;;;;;;;;;;;; Saved queries

;; ,nme
;; Hotstring to be typed in a FairMPOS pgcli window (non SU login)
:*:,nme::
{
  send("\n me")
}

;; ,nc
;; Hotstring to be typed in a FairMPOS pgcli window (non SU login)
:*:,nc::
{
  send("\n meconfig")
}

;; ,nt
;; Hotstring to be typed in a FairMPOS pgcli window (SU login)
:*:,nt::
{
  send("\n t")
}

;; ,nx
;; Hotstring to be typed in a FairMPOS pgcli window (SU login)
:*:,nx::
{
  send("\n nexttenant")
}

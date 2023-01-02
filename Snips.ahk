:*:,curlpost::curl -v -H "content-type: application/json" -d @
:*:,ssys::curl -sL shrayas.com/simplesys | bash
:*:,@w::shrayasr@logicsoft.co.in
:*:,@p::shrayasr@gmail.com

:*:,nsdns::
Send,https://ap.www.namecheap.com/domains/domaincontrolpanel//advancedns
Send,{left 11}
return

:*:,pg14bin::"C:\Program Files\PostgreSQL\14\bin\

:*:,dbm::
FormatTime, time, A_now, yyyyMMddHHmm
send % "V" . time . "__.sql"
send, {left 4}
return

:*:,gbr::
FormatTime, time, A_now, yyyy-MM-dd
send % "shrayasr/" . time . "/"
return

;; CONVENTIONAL COMMENTS
;; Used for code review on github

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
:*:,crn::
Send, **Rename:**`n`n to
Send, {left 3}
return

:*:,xrs::Suggestion: 
:*:,xrq::Question: 

;; Common paths
:*:,/wc::D:\work\code\
:*:,/d::D:\dump


;; Others

:*:,emd::[Draft]
:*:,nr::Rephrase: "
:*:,nd::Drop

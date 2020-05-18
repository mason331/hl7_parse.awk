# one-liner awk script to parse an HL7 message, created by mason331
awk 'BEGIN{RS="[\r\n]";FS="|"} {for(i=2;i<=NF;i++) if ($i != NULL) {if ($1 == "MSH") printf "%s-%s=%s\n",$1,i,$i;else  printf "%s-%s=%s\n",$1,i-1,$i}}' 

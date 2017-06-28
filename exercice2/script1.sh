ISTEXIDS=$(curl "https://api.istex.fr/document/?q=comics&size=5&output=id" | jq -r '.hits[].id')
for ISTEXID in $ISTEXIDS
do
  echo "Downloading ${ISTEXID}.pdf"
  curl -u istex@inist.fr:jnFRa5QXP7hW7ix "https://api.istex.fr/document/${ISTEXID}/fulltext/pdf" > ${ISTEXID}.pdf
done
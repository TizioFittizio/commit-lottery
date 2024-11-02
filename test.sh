WINNING_SHA=530ddd3
COMMIT_SHA=q31dw12
COMMIT_SHA=${COMMIT_SHA:0:7}
  
MATCH_COUNT=0
  
for (( i=0; i<${#WINNING_SHA}; i++ )); do
    if [[ ${WINNING_SHA:$i:1} == ${COMMIT_SHA:$i:1} ]]; then
        (( MATCH_COUNT++ ))
    fi
done
  
echo "Winning SHA: $WINNING_SHA"
echo "Commit SHA: $COMMIT_SHA"
echo "Match Count: $MATCH_COUNT"
  
if [ "$MATCH_COUNT" -ge 5 ]; then
    echo "You won the first prize!"
elif [ "$MATCH_COUNT" -eq 4 ]; then
    echo "You won the second prize!"
elif [ "$MATCH_COUNT" -eq 3 ]; then
    echo "You won the third prize!"
else
    echo "No prize this time."
fi
  
exit 0
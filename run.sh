APPNAME="fori_book_recommender"
ENV_FILE=".env"
PRIVATE_KEY=$(grep "PRIVATE_KEY" $ENV_FILE | cut -d '=' -f2)

snarkos developer execute "${APPNAME}.aleo"  main \
32571i32 \
32767i32 \
32767i32 \
0i32 \
0i32 \
0i32 \
0i32 \ 
  --path "./build/" \
  --private-key "${PRIVATE_KEY}" \
  --query "<https://api.explorer.aleo.org/v1>" \
  --priority-fee 3000000 \
  --broadcast "<https://api.explorer.aleo.org/v1/testnet3/transaction/broadcast>" \
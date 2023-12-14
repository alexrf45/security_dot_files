ffuf_subdomain() {

	ffuf -c -t 5 -rate 20 -p 0.2 \
		-H "User-Agent: $AGENT" -o $NAME_domains.json -of json \
		-H "Host: FUZZ.$DOMAIN" \
		-mc 200,403,401,503,500,302 -w $HOME/.wordlists/dns.txt -u http://$DOMAIN/
}

ffuf_directory() {

	ffuf -c -t 10 -rate 20 -p 0.2 -H "User-Agent: $AGENT" \
		-ac -mc 200,302,422,403,401,301 \
		-w $HOME/.wordlists/common.txt \
		-u http://$DOMAIN/FUZZ

}

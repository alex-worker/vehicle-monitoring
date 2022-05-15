CLIENT_NAME=my-awesome-client
NG=./node_modules/.bin/ng

serve:
	cd ${CLIENT_NAME} && $(NG) serve --open

client-new:
	$(NG) new my-awesome-client --style=css --routing=false --skip-tests

init:
	yarn init
	yarn add @angular/cli --dev
	$(NG) new ${CLIENT_NAME} --style=css --routing=false --skip-tests
	cd ${CLIENT_NAME} && yarn add primeng --save
	cd ${CLIENT_NAME} && yarn add primeicons --save

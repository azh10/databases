(function() {
'use strict';

angular.module("config", [])

.constant("ConStore", {
	"version": "v0.0.0",
	"showVersion": true,
	"baseUrl": "http://localhost:9019",
	"apiServer": "http://192.168.0.13:8081"
})

;})();
/**
 * 
 */

var sido = getParameterByName("sido");
var gugun = getParameterByName("gugun");
var dong = getParameterByName("dong");
var selected = false;
window.addEventListener('load', function() {
    console.log("dong............." + dong);
    if(dong != "") {
        selected = true;
    }
	sendRequest("sido", "*00000000");
	
	document.querySelector("#sido").addEventListener("change", function () {
		if (this[this.selectedIndex].value) {
			let regcode = this[this.selectedIndex].value.substr(0, 2) + "*00000";
			sendRequest("gugun", regcode);
		} else {
			initOption("gugun");
			initOption("dong");
		}
		console.log("구군정보 얻기..........");
	});
	
	//구군이 바뀌면 동정보 얻기.
	document.querySelector("#gugun").addEventListener("change", function () {
		if (this[this.selectedIndex].value) {
			let regcode = this[this.selectedIndex].value.substr(0, 5) + "*";
			sendRequest("dong", regcode);
		} else {
			initOption("dong");
		}
	});
})
///////////////////////// select box 설정 (지역, 매매기간) /////////////////////////


//https://juso.dev/docs/reg-code-api/
//let url = "https://grpc-proxy-server-mkvo6j4wsq-du.a.run.app/v1/regcodes";
//let regcode = "*00000000";
//전국 특별/광역시, 도
//https://grpc-proxy-server-mkvo6j4wsq-du.a.run.app/v1/regcodes?regcode_pattern=*00000000

//시도가 바뀌면 구군정보 얻기.

function getParameterByName(name) {
    name = name.replace(/[[\]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}


function sendRequest(selid, regcode) {
	const url = "https://grpc-proxy-server-mkvo6j4wsq-du.a.run.app/v1/regcodes";
	let params = "regcode_pattern=" + regcode + "&is_ignore_zero=true";
	console.log(params);
	fetch(`${url}?${params}`)
	.then((response) => response.json())
	.then((data) => addOption(selid, data));
}

function addOption(selid, data) {
	let opt = ``;
	let name = "";
	let idx = 2;
	initOption(selid);
	switch (selid) {
	case "sido":
		opt += `<option value="">시도선택</option>`;
		data.regcodes.forEach(function (regcode) {
			if(selected && regcode.code == sido) {
				opt += `
					<option value="${regcode.code}" selected="selected">${regcode.name}</option>
					`;
			} else {
				opt += `
					<option value="${regcode.code}">${regcode.name}</option>
					`;
			}
		});
		if(selected) {
            sendRequest("gugun", gugun.substr(0, 2) + "*00000");
        }
		break;
	case "gugun":
		opt += `<option value="">구군선택</option>`;
		for (let i = 0; i < data.regcodes.length; i++) {
			if (i != data.regcodes.length - 1) {
				if (
						data.regcodes[i].name.split(" ")[1] == data.regcodes[i + 1].name.split(" ")[1] &&
						data.regcodes[i].name.split(" ").length !=
							data.regcodes[i + 1].name.split(" ").length
				) {
					data.regcodes.splice(i, 1);
					i--;
				}
			}
		}
		data.regcodes.forEach(function (regcode) {
			if (regcode.name.split(" ").length == 2) name = regcode.name.split(" ")[1];
			else name = regcode.name.split(" ")[1] + " " + regcode.name.split(" ")[2];
			console.log("구군 코드 비교............." + regcode.code + " " + gugun + " " + selected);
			if(selected && regcode.code == gugun) {
				opt += `
					<option value="${regcode.code}" selected="selected">${name}</option>
					`;
			} else {
				opt += `
					<option value="${regcode.code}">${name}</option>
					`;
			}
		});
		if(selected) {
          sendRequest("dong", dong.substr(0, 5) + "*");
      }
		break;
	case "dong":
		opt += `<option value="">동선택</option>`;
		data.regcodes.forEach(function (regcode) {
			if (regcode.name.split(" ").length != 3) idx = 3;
			if(selected && regcode.code == dong) {
				opt += `
					<option value="${regcode.code}" selected="selected">${regcode.name.split(" ")[idx]}</option>
					`;
			} else {
				opt += `
					<option value="${regcode.code}">${regcode.name.split(" ")[idx]}</option>
					`;
			}
		});
	}
	document.querySelector(`#${selid}`).innerHTML = opt;
}

function initOption(selid) {
	let options = document.querySelector(`#${selid}`);
	options.length = 0;
	// let len = options.length;
	// for (let i = len - 1; i >= 0; i--) {
	//   options.remove(i);
	// }
}

///////////////////////// 아파트 매매 정보 /////////////////////////

//function initTable() {
//	let tbody = document.querySelector("#aptlist");
//	let len = tbody.rows.length;
//	for (let i = len - 1; i >= 0; i--) {
//		tbody.deleteRow(i);
//	}
//}


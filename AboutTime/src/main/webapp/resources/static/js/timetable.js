function dayToObjects(time) {
	switch (time) {
	case "Monday1":
		return {
			day : "월",
			time : 1
		};
	case "Monday2":
		return {
			day : "월",
			time : 2
		};
	case "Monday3":
		return {
			day : "월",
			time : 3
		};
	case "Monday4":
		return {
			day : "월",
			time : 4
		};
	case "Monday5":
		return {
			day : "월",
			time : 5
		};
	case "Monday6":
		return {
			day : "월",
			time : 6
		};
	case "Monday7":
		return {
			day : "월",
			time : 7
		};
	case "Monday8":
		return {
			day : "월",
			time : 8
		};
	case "Monday9":
		return {
			day : "월",
			time : 9
		};
	case "Tuesday1":
		return {
			day : "화",
			time : 1
		};
	case "Tuesday2":
		return {
			day : "화",
			time : 2
		};
	case "Tuesday3":
		return {
			day : "화",
			time : 3
		};
	case "Tuesday4":
		return {
			day : "화",
			time : 4
		};
	case "Tuesday5":
		return {
			day : "화",
			time : 5
		};
	case "Tuesday6":
		return {
			day : "화",
			time : 6
		};
	case "Tuesday7":
		return {
			day : "화",
			time : 7
		};
	case "Tuesday8":
		return {
			day : "화",
			time : 8
		};
	case "Tuesday9":
		return {
			day : "화",
			time : 9
		};
	case "Wednesday1":
		return {
			day : "수",
			time : 1
		};
	case "Wednesday2":
		return {
			day : "수",
			time : 2
		};
	case "Wednesday3":
		return {
			day : "수",
			time : 3
		};
	case "Wednesday4":
		return {
			day : "수",
			time : 4
		};
	case "Wednesday5":
		return {
			day : "수",
			time : 5
		};
	case "Wednesday6":
		return {
			day : "수",
			time : 6
		};
	case "Wednesday7":
		return {
			day : "수",
			time : 7
		};
	case "Wednesday8":
		return {
			day : "수",
			time : 8
		};
	case "Wednesday9":
		return {
			day : "수",
			time : 9
		};
	case "Thursday1":
		return {
			day : "목",
			time : 1
		};
	case "Thursday2":
		return {
			day : "목",
			time : 2
		};
	case "Thursday3":
		return {
			day : "목",
			time : 3
		};
	case "Thursday4":
		return {
			day : "목",
			time : 4
		};
	case "Thursday5":
		return {
			day : "목",
			time : 5
		};
	case "Thursday6":
		return {
			day : "목",
			time : 6
		};
	case "Thursday7":
		return {
			day : "목",
			time : 7
		};
	case "Thursday8":
		return {
			day : "목",
			time : 8
		};
	case "Thursday9":
		return {
			day : "목",
			time : 9
		};
	case "Friday1":
		return {
			day : "금",
			time : 1
		};
	case "Friday2":
		return {
			day : "금",
			time : 2
		};
	case "Friday3":
		return {
			day : "금",
			time : 3
		};
	case "Friday4":
		return {
			day : "금",
			time : 4
		};
	case "Friday5":
		return {
			day : "금",
			time : 5
		};
	case "Friday6":
		return {
			day : "금",
			time : 6
		};
	case "Friday7":
		return {
			day : "금",
			time : 7
		};
	case "Friday8":
		return {
			day : "금",
			time : 8
		};
	case "Friday9":
		return {
			day : "금",
			time : 9
		};
	}
};

function objectToDay(time) {
	switch (JSON.stringify(time)) {
	case JSON.stringify({
		day : "월",
		time : 1
	}):
		return "Monday1";
	case JSON.stringify({
		day : "월",
		time : 2
	}):
		return "Monday2";
	case JSON.stringify({
		day : "월",
		time : 3
	}):
		return "Monday3";
	case JSON.stringify({
		day : "월",
		time : 4
	}):
		return "Monday4";
	case JSON.stringify({
		day : "월",
		time : 5
	}):
		return "Monday5";
	case JSON.stringify({
		day : "월",
		time : 6
	}):
		return "Monday6";
	case JSON.stringify({
		day : "월",
		time : 7
	}):
		return "Monday7";
	case JSON.stringify({
		day : "월",
		time : 8
	}):
		return "Monday8";
	case JSON.stringify({
		day : "월",
		time : 9
	}):
		return "Monday9";
	case JSON.stringify({
		day : "화",
		time : 1
	}):
		return "Tuesday1";
	case JSON.stringify({
		day : "화",
		time : 2
	}):
		return "Tuesday2";
	case JSON.stringify({
		day : "화",
		time : 3
	}):
		return "Tuesday3";
	case JSON.stringify({
		day : "화",
		time : 4
	}):
		return "Tuesday4";
	case JSON.stringify({
		day : "화",
		time : 5
	}):
		return "Tuesday5";
	case JSON.stringify({
		day : "화",
		time : 6
	}):
		return "Tuesday6";
	case JSON.stringify({
		day : "화",
		time : 7
	}):
		return "Tuesday7";
	case JSON.stringify({
		day : "화",
		time : 8
	}):
		return "Tuesday8";
	case JSON.stringify({
		day : "화",
		time : 9
	}):
		return "Tuesday9";
	case JSON.stringify({
		day : "수",
		time : 1
	}):
		return "Wednesday1";
	case JSON.stringify({
		day : "수",
		time : 2
	}):
		return "Wednesday2";
	case JSON.stringify({
		day : "수",
		time : 3
	}):
		return "Wednesday3";
	case JSON.stringify({
		day : "수",
		time : 4
	}):
		return "Wednesday4";
	case JSON.stringify({
		day : "수",
		time : 5
	}):
		return "Wednesday5";
	case JSON.stringify({
		day : "수",
		time : 6
	}):
		return "Wednesday6";
	case JSON.stringify({
		day : "수",
		time : 7
	}):
		return "Wednesday7";
	case JSON.stringify({
		day : "수",
		time : 8
	}):
		return "Wednesday8";
	case JSON.stringify({
		day : "수",
		time : 9
	}):
		return "Wednesday9";
	case JSON.stringify({
		day : "목",
		time : 1
	}):
		return "Thursday1";
	case JSON.stringify({
		day : "목",
		time : 2
	}):
		return "Thursday2";
	case JSON.stringify({
		day : "목",
		time : 3
	}):
		return "Thursday3";
	case JSON.stringify({
		day : "목",
		time : 4
	}):
		return "Thursday4";
	case JSON.stringify({
		day : "목",
		time : 5
	}):
		return "Thursday5";
	case JSON.stringify({
		day : "목",
		time : 6
	}):
		return "Thursday6";
	case JSON.stringify({
		day : "목",
		time : 7
	}):
		return "Thursday7";
	case JSON.stringify({
		day : "목",
		time : 8
	}):
		return "Thursday8";
	case JSON.stringify({
		day : "목",
		time : 9
	}):
		return "Thursday9";
	case JSON.stringify({
		day : "금",
		time : 1
	}):
		return "Friday1";
	case JSON.stringify({
		day : "금",
		time : 2
	}):
		return "Friday2";
	case JSON.stringify({
		day : "금",
		time : 3
	}):
		return "Friday3";
	case JSON.stringify({
		day : "금",
		time : 4
	}):
		return "Friday4";
	case JSON.stringify({
		day : "금",
		time : 5
	}):
		return "Friday5";
	case JSON.stringify({
		day : "금",
		time : 6
	}):
		return "Friday6";
	case JSON.stringify({
		day : "금",
		time : 7
	}):
		return "Friday7";
	case JSON.stringify({
		day : "금",
		time : 8
	}):
		return "Friday8";
	case JSON.stringify({
		day : "금",
		time : 9
	}):
		return "Friday9";
	}
}

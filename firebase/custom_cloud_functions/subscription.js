const functions = require("firebase-functions");
const admin = require("firebase-admin");
const https = require("https");
// To avoid deployment errors, do not call admin.initializeApp() in your code

exports.subscription = functions.https.onRequest(async (req, res) => {
  res.set("Access-Control-Allow-Origin", "*");
  res.set("Access-Control-Allow-Methods", "GET, POST");
  res.set("Access-Control-Allow-Headers", "Content-Type, Authorization");
  const data = req.body;
  const myHeaders = new Headers();
  myHeaders.append("Content-Type", "application/json");
  myHeaders.append(
    "Authorization",
    "Basic eG5kX2RldmVsb3BtZW50X2U1NncyeHhaRzNxVElsOW5UdjBJRmlVOHVFSVJ1ZzRlQXB1eTBscXN2eDh2UGhtdllnazRmbHRzTWxoSlNBOg==",
  );
  myHeaders.append(
    "Cookie",
    "__cf_bm=lXx2QyX3eIN42hCBLfC7dhj8USIf3j0d1at03dX7xaI-1719482041-1.0.1.1-cvfnaKZsiKIehzjF_ebUnICGiIFwnqeayGz8swcSIqlGURcPIEI1C_L16H_8w1FDNicqGGN77JUjfcmuJMZQHA",
  );

  const raw = JSON.stringify({
    reference_id: "9258fe25-10ae-4575-bf0e-4b1ecf530787",
    mobile_number: "+6218181818181",
    email: "test@mail.com",
    type: "INDIVIDUAL",
    individual_detail: {
      given_names: "Taufik Nurhidayat",
    },
  });

  const requestOptions = {
    method: "POST",
    headers: myHeaders,
    body: raw,
    redirect: "follow",
  };

  var customerData = await fetch(
    "https://api.xendit.co/customers",
    requestOptions,
  )
    .then((response) => response.text())
    .then((result) => console.log(result))
    .catch((error) => console.error(error));
  res.json({ customer: customerData, data: data });
});
